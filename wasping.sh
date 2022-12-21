#!/bin/bash

clear

source presentacion.sh
source select-arrow.sh
source ip-finder.sh


nmap -sP $ip > temp/listado-ip.txt

reporte=`cat temp/listado-ip.txt | grep -o '[0-9][0-9][0-9].[0-9][0-9][0-9].\w*\.\w*'`


echo $ip

echo "================="

#echo $reporte

echo "================="

array=($reporte)

#echo "${array[0]}"



case `select_opt "${array[@]}"` in
    0) echo "has elegido";;
    1) OPTION="selected No";;
    *) OPTION="selected ${array[$?]}";;
esac
