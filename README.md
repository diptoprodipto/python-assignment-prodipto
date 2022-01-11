# python-assignment-prodipto
> Python assignment

## Used tools
- Python
- Scrapy
- Postgres

## Installation process
- Clone the project.
- Go to the following directory by using cd:
``` bash
python-assignment-prodipto/
```
- Activate virtual environment by running the following command. If you're using PyCharm then opening a new Local terminal from the bottom side should activate it automatically.
``` bash
source venv/bin/activate
```
- Go to the hotelScraper/ directory from the current directory by running:
``` bash
cd hotelScraper/
```
- Finally run the following command to scrape the data and store them to the database:
``` bash
scrapy crawl hotel
```
