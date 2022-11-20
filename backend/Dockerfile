FROM php:apache-bullseye

LABEL org.opencontainers.image.authors=patrickm.lima1@gmail.com

COPY . /var/www/html

RUN docker-php-ext-install mysqli && docker-php-ext-install pdo_mysql

EXPOSE 80
