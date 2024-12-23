FROM php:8.3-apache

# Voeg repository en tools toe
RUN apt-get update && apt-get install -y \
    lsb-release \
    gnupg \
    wget && \
    echo "deb https://packages.sury.org/php/ $(lsb-release -sc) main" > /etc/apt/sources.list.d/php.list && \
    wget -qO - https://packages.sury.org/php/apt.gpg | apt-key add -

# Installeer PHP-extensies en andere benodigde pakketten
RUN apt-get update && apt-get install -y \
    php8.3-common \
    php8.3-mysql \
    php8.3-opcache \
    php8.3-soap \
    php8.3-xml \
    php8.3-zip \
    php8.3-bcmath \
    whois \
    dnsutils \
    git && \
    apt-get clean