#!/bin/bash

clear

source presentacion.sh

source ip-finder.sh


nmap -sP $ip > temp/listado-ip.txt

reporte=`cat temp/listado-ip.txt | grep -o '[0-9][0-9][0-9].[0-9][0-9][0-9].\w*\.\w*'`


echo $ip

echo "================="

echo $reporte

echo "================="

array=($reporte)

echo "${array[0]}"

