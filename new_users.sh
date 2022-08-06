#!/bin/bash

echo "Usuários sendo gerados.."

useradd person1 -c "Primeiro indivíduo" -m -s /bin/bash -p $(openssl passwd numero123)
passwd person1 -e

useradd person2 -c "Segundo indivíduo" -m -s /bin/bash -p $(openssl passwd numero123)
passwd person2 -e

useradd person3 -c "Terceiro indivíduo" -m -s /bin/bash -p $(openssl passwd numero123)
passwd person3 -e

useradd person4 -c "Quarto indivíduo" -m -s /bin/bash -p $(openssl passwd numero123)
passwd person4 -e

echo "Finalizando!!"