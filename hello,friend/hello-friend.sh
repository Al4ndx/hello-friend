#!/bin/bash
figlet hello, friend
sudo pacman -S nmap
# Dirección IP a escanear
echo "ip:"
read ip

# Opciones de Nmap
opciones="-Pn -T4 -A"

# Escanear la dirección IP con Nmap
nmap $opciones $ip | grep -o "open\s\+\([0-9]\+\)/tcp\s\+\([^\)]\+\)" | sort -u > puertos_versiones.txt

# Mostrar los puertos y versiones
echo "Puertos abiertos y versiones:"
cat puertos_versiones.txt

# Eliminar el archivo temporal
rm puertos_versiones.txt
