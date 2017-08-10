FROM dreadlabs/debian-base:8.6

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN echo 'deb https://packages.dotdeb.org jessie all' > /etc/apt/sources.list.d/dotdeb.list \
    && curl https://www.dotdeb.org/dotdeb.gpg | apt-key add - \
    && DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.0-apcu php7.0-curl php7.0-gd php7.0-intl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-opcache php7.0-xml php7.0-zip \
    && rm -rf /var/lib/apt

WORKDIR /app
VOLUME ["/app"]

CMD ["php", "-a"]
