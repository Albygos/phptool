# Use official PHP-Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite (optional, for pretty URLs)
RUN a2enmod rewrite

# Copy your PHP app into Apache's public directory
COPY . /var/www/html/

# Set proper permissions (optional but recommended)
RUN chown -R www-data:www-data /var/www/html
