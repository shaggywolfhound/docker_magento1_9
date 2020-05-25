FROM httpd:alpine
RUN apk update && apk upgrade
RUN apk add net-tools

# Copy apache vhost file to proxy php requests to php-fpm container
RUN mkdir -p /var/www/m1.9/public_html
COPY ./conf/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY ./conf/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
RUN apachectl start

