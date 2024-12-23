#!/bin/bash

# Configure PHP settings
sed -i 's/^upload_max_filesize = .*/upload_max_filesize = 500M/' /etc/php/8.3/apache2/php.ini
sed -i 's/^post_max_size = .*/post_max_size = 500M/' /etc/php/8.3/apache2/php.ini

# Restart Apache to apply configuration changes
service apache2 restart

# Execute the original CMD
exec "$@"