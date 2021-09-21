FROM php:7.4.1-apache

COPY . /var/www/html

COPY .docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN apt-get update && apt-get install libpq-dev -y && docker-php-ext-install pdo_pgsql