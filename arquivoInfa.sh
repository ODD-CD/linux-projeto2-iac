#!/bin/bash

echo "Criando diretórios..."

sudo mkdir /publico
sudo mkdir /adm
sudo mkdir /ven
sudo mkdir /sec

echo "Especificando permissões dos diretórios..."

sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo "Criando grupos de usuários..."

sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Mudando grupos dos diretórios..."

sudo chgrp GRP_ADM /adm
sudo chgrp GRP_VEN /ven
sudo chgrp GRP_SEC /sec

echo "Criando usuários..."

sudo useradd -m -s /bin/bash -G GRP_ADM carlos
sudo useradd -m -s /bin/bash -G GRP_ADM maria
sudo useradd -m -s /bin/bash -G GRP_ADM joao

sudo useradd -m -s /bin/bash -G GRP_VEN debora
sudo useradd -m -s /bin/bash -G GRP_VEN sebastiana
sudo useradd -m -s /bin/bash -G GRP_VEN roberto

sudo useradd -m -s /bin/bash -G GRP_SEC josefina
sudo useradd -m -s /bin/bash -G GRP_SEC amanda
sudo useradd -m -s /bin/bash -G GRP_SEC rogerio

echo "Finalizado..."
