FROM dreadlabs/php-base:7.3-cli

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.3-fpm \
    && rm -rf /var/lib/apt/lists/* \
    && mv /etc/php/7.3/fpm/pool.d/www.conf /etc/php/7.3/fpm/pool.d/010-www.conf

CMD ["php", "--version"]
