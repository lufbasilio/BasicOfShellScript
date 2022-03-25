#!/usr/bin/env bash

echo "$0"

VAR1=1
VAR2=1

if [ "$VAR1" = "$VAR2" ]; then
     echo "SAO IGUAIS!"
else
    echo "Sao Diferentes"
fi

[ "$VAR1" = "$VAR2" ] && echo "São Iguais" #CLEAN CODE! or= ||