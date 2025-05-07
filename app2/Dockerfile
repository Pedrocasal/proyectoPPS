FROM ubuntu:22.04

# No hacer preguntas al instalar paquetes
ENV DEBIAN_FRONTEND=noninteractive

# Instalar Apache, PHP y Git
RUN apt-get update && \
    apt-get install -y apache2 php git && \
    apt-get clean

# Clonar aplicación PHP sencilla desde GitHub
RUN rm -rf /var/www/html/* 
RUN git clone https://github.com/banago/simple-php-website /var/www/html

# Establecer permisos adecuados (opcional pero recomendable)
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]
