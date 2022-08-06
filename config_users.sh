#!/bin/bash

echo "Todos os diretórios sendo gerados"

mkdir /publico
mkdir /adminn
mkdir /seguranca
mkdir /vendas

echo "Grupos sendo gerados"

groupadd GROUP_ADMINN
groupadd GROUP_VENDAS
groupadd GROUP_SEGURANCA
groupadd GROUP_VENDAS

echo "Criando usuários"

useradd person1 -m -s /bin/bash -p $(openssl passwd Senha123) -G GROUP_ADMINN
useradd person2 -m -s /bin/bash -p $(openssl passwd Senha123) -G GROUP_VENDAS
useradd person3 -m -s /bin/bash -p $(openssl passwd Senha123) -G GROUP_SEGURANCA
useradd person4 -m -s /bin/bash -p $(openssl passwd Senha123) -G GROUP_VENDAS

echo "Classificando permissões das pastas"

chown root:GROUP_ADMIN /adminn
chown root:GROUP_VENDAS /vendas
chown root:GROUP_SEGURANCA /seguranca

echo "Gerando permissões"

chmod 754 /adminn
chmod 754 /vendas
chmod 754 /seguranca
chmod 777 /publico
