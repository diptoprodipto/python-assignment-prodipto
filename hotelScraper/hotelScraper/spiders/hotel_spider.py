import scrapy
import json
import psycopg2

class HotelSpider(scrapy.Spider):
    name = "hotel"
    start_urls = [
        'https://www.kayak.co.in/New-York-Hotels.15830.hotel.ksp'
    ]

    def parse(self, response):

        all_hotel_data = response.css('div.soom')

        conn = psycopg2.connect("dbname='hotelScraper' user='postgres' host='localhost' password='root'")
        cur = conn.cursor()
        cur.execute(
            "SELECT EXISTS(SELECT FROM pg_tables WHERE schemaname = 'public' AND tablename = 'hotel_data');"
        )

        check_table = cur.fetchone()[0]

        if check_table:
            print("Table already exists!!!")
        else:
            cur.execute("CREATE TABLE hotel_data (id serial PRIMARY KEY, title varchar, image varchar, rating varchar, price varchar, location varchar, amenities text);")

        for hotel in all_hotel_data:

            title = hotel.xpath('div/div/div/a/span/text()').get()
            image = hotel.xpath('a/img/@src').get()
            rating = hotel.xpath('div/div/div/div/span/text()').get()
            price = hotel.xpath('div/div/span/text()').get()
            amenities = hotel.css('div.soom-content-wrapper div.soom-freebies-section div.soom-freebies div.soom-freebie span.yRv1-text::text').getall()

            if image is None:
                try1 = response.xpath(f"(//script[contains(text(),'{title}')])/text()").getall()
                data = json.loads(try1[0])
                image = data.get('image')

                if image:

                    image = image
                    title = title
                    rating = rating
                    location = hotel.css('span.soom-neighborhood::text').get()
                    amenities = amenities
                    price = price

                    cur.execute("INSERT INTO hotel_data (title, image, rating, price, location, amenities) VALUES (%s, %s, %s, %s, %s, %s)", (title, image, rating, price, location, amenities))

                    conn.commit()

            else:

                image = image
                title = title
                rating = hotel.xpath('div/div/div/div/span/text()').get()
                location = hotel.css('span.soom-neighborhood::text').get()
                amenities = amenities
                price = hotel.css('span.soom-price::text').get()

                cur.execute("INSERT INTO hotel_data (title, image, rating, price, location, amenities) VALUES (%s, %s, %s, %s, %s, %s)", (title, image, rating, price, location, amenities))

                conn.commit()

        cur.close()
        conn.close()







        # hotelName = response.css('#root div.Ppny div.X-Jj div.X-Jj-hotels-by-rating div.c09SH section.c09SH-section div.c09SH-content div.c09SH-right-side div.c44F div.c44F-content div.c44F-item.c44F-mod-visible div.soom div.soom-content-wrapper div.soom-description-wrapper div.soom-description a.soom-name span::text')[0].extract()
        # imgSrc1 = response.css('img.soom-photo').xpath('@src').extract()
        # imgSrc2 = response.css('img.ATNn.soom-photo').xpath('@src').extract()
        # yield {'hotelName': hotelName, 'imgSrc1': imgSrc1, 'imgSrc2': imgSrc2}

        # yield {
        #         'image_link': image,
        #         'title': title,
        #         'ratings': hotel.xpath('div/div/div/div/span/text()').get(),
        #         'location': hotel.css('span.soom-neighborhood::text').get(),
        #         'amenities': amenities,
        #         'price': hotel.css('span.soom-price::text').get(),
        #     }