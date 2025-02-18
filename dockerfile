# Dockerfile
FROM php:8.4-apache

# Xdebugのインストール
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Xdebug設定
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
