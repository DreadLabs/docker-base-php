FROM dreadlabs/debian-base:10-buster

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.3-cli php7.3-intl php7.3-json php7.3-mbstring php7.3-opcache php7.3-sqlite3 \
    && rm -rf /var/lib/apt/lists/*

CMD ["php", "--version"]
