#!/bin/bash

echo "Criando diretórios..."
mkdir -p /public /adm /ven /sec

echo "Criando grupos de usuários..."
groupadd GRP_TI
groupadd GRP_FIN
groupadd GRP_RH

echo "Criando usuários..."
for user in alice bruno clara; do
    useradd "$user" -m -s /bin/bash -p $(openssl passwd NovaSenha456) -G GRP_TI
done

for user in daniel elena fernando; do
    useradd "$user" -m -s /bin/bash -p $(openssl passwd  NovaSenha456) -G GRP_FIN
done

for user in gabriel helena igor; do
    useradd "$user" -m -s /bin/bash -p $(openssl passwd  NovaSenha456) -G GRP_RH
done

echo "Especificando permissões dos diretórios..."
chown root:GRP_TI /adm
chown root:GRP_FIN /ven
chown root:GRP_RH /sec

chmod 770 /adm /ven /sec
chmod 777 /public

echo "Fim..."
