FROM php:8-fpm

COPY --from=composer /usr/bin/composer /usr/bin/composer

ARG USERID=1000
ARG USERNAME=user

COPY php.ini $PHP_INI_DIR/php.ini

RUN apt-get update \
&& apt-get upgrade --yes \
&& apt-get install --yes zip unzip libzip-dev git libicu-dev libcairo2-dev libjpeg-dev libgif-dev

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql mysqli intl zip

RUN useradd -m ${USERNAME} --uid ${USERID}
USER ${USERNAME}
