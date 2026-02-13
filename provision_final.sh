#!/bin/bash
# Script de provisión rápida para el Ingeniero
echo "Configurando Firewall..."
sudo ufw allow 389/tcp
sudo ufw allow 3000/tcp
sudo ufw allow 9100/tcp
sudo ufw enable

echo "Verificando Contenedores de Monitoreo..."
docker ps --format "table {{.Names}}\t{{.Status}}"

