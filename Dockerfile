FROM ubuntu

MAINTAINER ChinhLC <hello@check.com>

#Run update and install nginx, php-fpm and other useful libraries
RUN apt-get update -y && \
	apt-get install -y \
	php-fpm php-mysql

VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/php5-fpm"]