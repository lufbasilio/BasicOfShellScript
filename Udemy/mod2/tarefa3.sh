#!/usr/bin/env bash
#
# tarefa3.sh - Organizando o codigo fornecido.
#
# Site:       https://4fasters.com.br
# Autor:      Mateus Müller
# Manutenção: Lucas Ferreira
#
# ------------------------------------------------------------------------ #
#  Este programa irá mostrar asteriscos ordenados de forma decrescente.
#
#  Exemplos de utilização:
#      $ ./tarefa3.sh
#      Este comando executará o script.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Mateus:
#       - Início do programa
#   v1.1 03/04/2022, Lucas:
#       - Alterado a indentação do script
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.4(1)-release
# ------------------------------------------------------------------------ #



# ------------------------------- VARIÁVEIS ----------------------------------------- #

comeca=0 
ate=100

# ------------------------------- TESTES -------------------------------------------- #

[ $comeca -ge $ate ] && exit 1

# ------------------------------- EXECUÇÃO ------------------------------------------ #

for i in $(seq $comeca $ate);do 
    for j in $(seq $i $ate);do 
        printf "*";
    done;
    printf "\n";
done

# ----------------------------------------------------------------------------------- #