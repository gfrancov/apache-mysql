# Docker amb Apache  + Mariadb

## Creació de la imatge
Dins del directori construim el docker image:
`docker build -t apachemysql ./`

## Startup del docker
Per crear el docker utilitzem la següent comanda:
`docker run -dit --name apachemysql -p 8080:80 -p 3306:3306 -v /var/www/html:/var/www/html apachemysql`

I per al correcte funcionament dels serveis del docker fem:
`sudo docker exec -it apachemysql /bin/bash -c "/opt/start.sh"`

## Fitxer start.sh
Aquest és el contingut del fitxer `start.sh`
```bash
service apache2 start
service mysql start

mariadb < /opt/database.sql
```

## Fitxer database.sql
Aquest és el contingut del fitxer `database.sql`
```sql
CREATE USER 'gfranco'@'localhost' IDENTIFIED BY 'lapineda';
CREATE USER 'gfranco'@'%' IDENTIFIED BY 'lapineda';

GRANT ALL PRIVILEGES ON *.* TO 'gfranco'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'gfranco'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
```
