# Databases

Copy file `.env.tpl` to `.env` file and pass required variables
```
cp .env.tpl .env
```
and run docker-compose:
```
docker-compose up --build -d
```

to apply dump run:
```
mysql -u root -p -h 127.0.0.1 < music-shop.sql
mysql -u root -p -h 127.0.0.1 shop < inserts.sql
mysql -u root -p -h 127.0.0.1 shop < selects.sql
mysql -u root -p -h 127.0.0.1 shop < updates.sql
```
