#!/usr/bin/env bash

echo "Informe dois numeros:"

NUMERO1=10
NUMERO2=20

echo "$NUMERO1 $NUMERO2"
 
echo "a soma é de:"

TOTAL=$(($NUMERO1+$NUMERO2))
echo "$TOTAL"

echo "Com acrescimo de 1, fica:"

TOTAL=$(($TOTAL+1))
echo "$TOTAL"