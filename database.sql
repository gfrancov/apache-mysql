CREATE USER 'gfranco'@'localhost' IDENTIFIED BY 'lapineda';
CREATE USER 'gfranco'@'%' IDENTIFIED BY 'lapineda';

GRANT ALL PRIVILEGES ON *.* TO 'gfranco'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'gfranco'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;