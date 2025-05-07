#!/bin/bash

for i in {1..20}; do
  docker stop php-apache-$i
  docker rm php-apache-$i
  echo "Contenedor php-apache-$i detenido y eliminado"
done
