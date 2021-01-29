FROM yiisoftware/yii2-php:7.4-fpm

RUN apt-get update && apt-get install -y \
        curl \
        wget \
        git

ARG PHP_XDEBUG_ENABLE

# Enable xdebug by ENV variable
RUN if [ 0 -ne "${PHP_XDEBUG_ENABLE:-0}" ] ; then docker-php-ext-enable xdebug && echo "Enabled xdebug" ; fi

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

# Добавим свой php.ini, можем в нем определять свои значения конфига
#ADD php.ini /usr/local/etc/php/conf.d/40-custom.ini

# Запускаем контейнер
# Из документации: The main purpose of a CMD is to provide defaults for an executing container. These defaults can include an executable,
# or they can omit the executable, in which case you must specify an ENTRYPOINT instruction as well.
CMD ["php-fpm"]