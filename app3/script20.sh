#!/bin/bash

for i in {1..20}; do
  PORT=$((8000 + i))
  docker run -d -p $PORT:80 --name php-apache-$i php-apache-git
  echo "Contenedor php-apache-$i iniciado en puerto $PORT"
done
