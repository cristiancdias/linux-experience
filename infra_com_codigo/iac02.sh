#!/bin/bash

echo "Atualizando configuracao dpkg"
dpkg --configure -a

echo "Atualizando servidor"
apt update -y 
apt upgrade -y

echo "Instalando Apache"
apt install apache2 -y

echo "Excluindo arquivo index.html"
cd /var/www/html/
rm index.html

cd /

echo "Instalando unzip"
apt install unzip -y 

echo "Baixando repositorio"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos"
unzip main.zip

echo "Copiando arquivos para pasta do apache"
cd linux-site-dio-main/

cp -R * /var/www/html/
