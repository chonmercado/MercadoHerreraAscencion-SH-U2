# Usar una imagen base con Apache y PHP
FROM php:8.1-apache

# Instalar extensiones necesarias de PHP para MySQL
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copiar el código de la aplicación al contenedor
COPY . /var/www/html/

# Configurar permisos
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80 para el servidor web
EXPOSE 80
