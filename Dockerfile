FROM php:8.3-apache

# Installeer vereiste tools en PHP-extensies
RUN apt-get update && apt-get install -y \
    lsb-release \
    gnupg \
    wget \
    php8.3-mysql \
    php8.3-common \
    php8.3-opcache \
    php8.3-soap \
    php8.3-xml \
    php8.3-zip \
    php8.3-bcmath \
    whois \
    dnsutils \
    git && \
    apt-get clean

# Voeg de PHP-configuratie aan
RUN echo "upload_max_filesize = 500M" >> /usr/local/etc/php/php.ini
RUN echo "post_max_size = 500M" >> /usr/local/etc/php/php.ini

# Voeg een entrypoint-script toe om configuraties te laden
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

CMD ["/usr/local/bin/entrypoint.sh"]