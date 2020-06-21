FROM php:7.2-fpm-alpine

#update install
RUN apk update && apk upgrade
#add common needed tools
RUN apk add net-tools && apk add bash

#add php modules needed for M1.9
RUN apk add php7-curl php7-gd php7-mysqli php7-json php7-soap
#add mcrypt and setup
RUN apk add libmcrypt-dev php7-pear php7-dev php7-pecl-mcrypt php7-mcrypt alpine-sdk
RUN pecl install mcrypt-1.0.1 && docker-php-ext-enable mcrypt
#add php.ini file
COPY ./conf/php.ini /usr/local/etc/php/php.ini
