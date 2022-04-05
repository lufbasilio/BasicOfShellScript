#!/usr/bin/env bash
#
# chaves_flags.sh - Verifica os usuario no Linux.
#
# Autor:      Lucas Ferreira
# ------------------------------------------------------------------------ #
#  Este programa irá listar os usuarios do Linux, utilizando um cat no
# seguinte caminho: /etc/passwd.
#
#  Exemplo de uso:
#      $ ./chaves_flags.sh -o -m
#      Neste exemplo o script colocará em ordem alfabetica e em caixa alta.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 04/04/2022, Lucas:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.4(1)-release
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d ':' -f 1)"
MENSAGEM_USO="
    $(basename $0) - [OPÇÕES DE USO:]

    -h          Menu de ajuda
    -o          Ordena por ordem alfabética
    -m          Mostra em maiúsculo
    --version   Mostra a versão do Script
"
VERSION="1.1"
# ------------------------------------------------------------------------ #

case "${1}" in
    -h)
        echo "${MENSAGEM_USO}"              ;;
    -o)
        echo "${USUARIOS}" | sort           ;;
    -v | --version)
        echo "${VERSION}"                   ;;
    -m)
       echo "${USUARIOS}" | tr [a-z] [A-Z]  ;;
    *) 
        echo "${USUARIOS}"                  ;;  
esac