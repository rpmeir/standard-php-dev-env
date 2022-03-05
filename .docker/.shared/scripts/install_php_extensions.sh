#!/bin/sh

# add wget
apt-get update -yqq && apt-get -f install -yyq wget

# download helper script
# @see https://github.com/mlocati/docker-php-extension-installer/
wget -q -O /usr/local/bin/install-php-extensions \
    https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions \
    || (echo "Failed while downloading php extension installer!"; exit 1)

# install extensions
chmod uga+x /usr/local/bin/install-php-extensions && sync && install-php-extensions \
    opcache \
    xdebug \
    zip \
    pdo_mysql \
;
