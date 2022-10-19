#!/bin/bash


echo "Criando usuários do sistema...."


for i in $(awk ´{print $1}´ usuario)  
do
    useradd guest$i -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
    grep $i usuarios | awk ´{print $1}´
done


echo "Finalizado!!"

