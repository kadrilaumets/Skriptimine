#!/bin/bash

#küsib kasutajanime ja parooli
read -p "Sisesta kasutajanimi: " kasutaja
read -s -p "Parool: " password

#grupp?
grupp="${1:-kylaline}"


#loob kasutaja
useradd -m -g "$grupp" "$kasutaja"

#kataloogi loomine
mkdir /home/"$kasutaja"/kataloog
#faili loomine
touch /home/"$kasutaja"/kataloog/teretulemast_"$kasutaja".txt

 
