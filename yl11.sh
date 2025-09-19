#!/bin/bash

#küsib kasutajalt teenuse sisendit
read -p "Sisesta teenuse nimi: " teenus

#kontroll if lausega teenuse olekut
if systemctl is-active --quiet "$teenus"; then
	echo "$teenus on aktiivne ja töötab."
else
	echo "Hoiatus: $teenus ei ole aktiivne."
fi
