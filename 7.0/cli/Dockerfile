FROM dreadlabs/debian-base:9-stretch

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.0-cli php7.0-intl php7.0-json php7.0-mbstring php7.0-opcache php7.0-sqlite3 \
    && rm -rf /var/lib/apt/lists/*

CMD ["php", "--version"]
