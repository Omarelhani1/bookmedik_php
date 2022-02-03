FROM php:7.4-apache
EXPOSE 80
RUN apt update && apt install -y mariadb-client && docker-php-ext-install mysqli
COPY bookmedik /var/www/html/
ADD variables.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/variables.sh
CMD ["bash","/usr/local/bin/variables.sh"]
