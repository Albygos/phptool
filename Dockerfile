# Use official PHP with Apache image
FROM php:8.2-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Enable mod_rewrite (optional)
RUN a2enmod rewrite

# Copy your app to Apache's web root
COPY . /var/www/html/

# Set file permissions (optional)
RUN chown -R www-data:www-data /var/www/html
