#!/bin/bash

echo "Criando Diretorios"

mkdir /publico 
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Permissoes Grupo e Diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Criando usuarios"

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM
useradd maria -c "Maria Silva" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM
useradd joao -c "Joao Silva" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_ADM

useradd debora -c "Debora Santos" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Santos" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_VEN
useradd roberto -c "Roberto Santos" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G	GRP_VEN

useradd josefina -c "Josefina Borges" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd amanda -c "Amanda Nobrega" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Batata" -s /bin/bash -m -p $(openssl passwd -5 senha123) -G GRP_SEC

echo "Finalizando criacao de usuarios"

echo "Finalizando script"
