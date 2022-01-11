# python-assignment-prodipto
> Python assignment

## Used tools
- Python
- Scrapy
- Postgres

## Installation process
### Database configuration:
- For installing Postgres run the following command one by one. Check this website for more info: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04
``` bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```
- For installing pgAdmin4 run the following command one by one. Check this website for more info: https://kodemonk.dev/blog/installing-pgadmin-4-in-ubuntu-20-04
``` bash
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
sudo apt install pgadmin4
sudo passwd postgres
su postgres
psql -c "ALTER USER postgres PASSWORD 'root';"
```
- Open pgAdmin4 application and add a new server like the folowing images. Password: root

![Screenshot from 2022-01-11 13-16-38](https://user-images.githubusercontent.com/56860950/148898217-e4213164-4f81-49ea-a275-345dfa6b9c08.png)
![Screenshot from 2022-01-11 13-18-32](https://user-images.githubusercontent.com/56860950/148898335-21750e96-96c7-40ad-bfa2-94e20d015078.png)

- Create a database named: 'hotelScraper' by using pgAdmin4

### For running the project:
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
