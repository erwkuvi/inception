FROM alpine:3.19

ARG PHP_VERSION=83 \
    DB_NAME \
    DB_USER \
    DB_PASS 

RUN apk update && apk upgrade && apk add --no-cache \
    php${PHP_VERSION} \
    php${PHP_VERSION}-fpm \
    php${PHP_VERSION}-mysqli \
    php${PHP_VERSION}-json \
    php${PHP_VERSION}-curl \
    php${PHP_VERSION}-dom \
    php${PHP_VERSION}-exif \
    php${PHP_VERSION}-fileinfo \
    php${PHP_VERSION}-mbstring \
    php${PHP_VERSION}-openssl \
    php${PHP_VERSION}-xml \
    php${PHP_VERSION}-zip \
    php${PHP_VERSION}-redis \
    php${PHP_VERSION}-cli \
    php${PHP_VERSION}-phar \
    wget \
    unzip && \
    ln -s /usr/bin/php${PHP_VERSION} /usr/bin/php && \
    sed -i 's|listen = 127.0.0.1:9000|listen = 9000|g' \
      /etc/php${PHP_VERSION}/php-fpm.d/www.conf && \
    sed -i 's|;listen.owner = nobody|listen.owner = nobody|g' \
      /etc/php${PHP_VERSION}/php-fpm.d/www.conf && \
    sed -i 's|;listen.group = nobody|listen.group = nobody|g' \
      /etc/php${PHP_VERSION}/php-fpm.d/www.conf && \
    rm -f /var/cache/apk/*

WORKDIR /var/www

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp


RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && \
    cp -rf wordpress/* . && \
    rm -rf wordpress latest.zip \
    chmod -R 0777 wp-content/

COPY ./requirements/wordpress/conf/wp-config-create.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wp-config-create.sh

#ENTRYPOINT ["/usr/local/bin/wp-config-create.sh"]
WORKDIR /var/www
#CMD ["/usr/sbin/php-fpm83", "-F"]
