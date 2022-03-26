#!/usr/bin/env bash
#(Shebang apontando pro compilador)
echo "$0"

NOME="Lucas
bonito"

echo $NOME +1 #caso eu coloque a variavael entre aspas ela ira printar a formatção#

IDADE=21
ANO=2022

TOTAL=$(($ANO+$IDADE))

TOTAL=$(($TOTAL+1))

echo $TOTAL

SAIDA_LS="$(ls /home/lucas)"
echo "$SAIDA_LS"

echo "___________________________________________________________"


echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Todos os Parametros $*"
echo "Numero de parametros: $#"
echo "Status da execucao:
1 = ERRO / 0 = EXITO 
    $?"

echo "PID desta execucao: $$"



