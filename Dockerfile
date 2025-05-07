# Imagen base de PHP con servidor embebido
FROM php:8.2-cli

# Crear y moverse al directorio de trabajo
WORKDIR /var/www/html

# Copiar la app PHP desde el host
COPY app/ /var/www/html/

# Exponer el puerto 8000
EXPOSE 8000

# Comando por defecto
CMD ["php", "-S", "0.0.0.0:8000"]
