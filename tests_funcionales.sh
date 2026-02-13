#!/bin/bash
echo "--- TEST 1: Conectividad de Red (Ping) ---"
ping -c 2 10.26.208.201

echo -e "\n--- TEST 2: Estado del Servicio LDAP (Puerto 389) ---"
nc -zv 10.26.208.201 389

echo -e "\n--- TEST 3: Validación de Usuario (Andy) ---"
ldapsearch -x -H ldap://10.26.208.201 -b "dc=proyecto,dc=local" -D "uid=lagla,ou=Usuarios,dc=proyecto,dc=local" -w Password123! | grep "result: 0 Success"

echo -e "\n--- TEST 4: Estado de Contenedores Monitoreo ---"
docker ps | grep monitoreo
