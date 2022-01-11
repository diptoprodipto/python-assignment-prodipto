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
