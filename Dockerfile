FROM php:7.2-fpm

RUN apt-get update

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y  --no-install-recommends git zip unzip apt-utils libwebp-dev libjpeg62-turbo-dev libpng-dev libxpm-dev \
    libfreetype6-dev 

RUN docker-php-ext-configure gd --with-gd --with-webp-dir --with-jpeg-dir \
    --with-png-dir --with-zlib-dir --with-xpm-dir --with-freetype-dir \
    --enable-gd-native-ttf

RUN docker-php-ext-install zip

RUN docker-php-ext-install gd

RUN apt-get -yqq install exiftool
RUN docker-php-ext-configure exif

RUN docker-php-ext-install exif
RUN docker-php-ext-install pdo_mysql

RUN docker-php-ext-enable exif
RUN docker-php-ext-enable pdo_mysql

COPY . /myapp

WORKDIR /myapp
RUN php composer.phar update

EXPOSE 8000
CMD ["php artisan serve"]