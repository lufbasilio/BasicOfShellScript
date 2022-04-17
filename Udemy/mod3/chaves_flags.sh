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


HELP=0
ORDENA=0
VER=0
MAI=0
# ------------------------------------------------------------------------ #

while test -n "$1" ; do
    case "${1}" in
        -h)
            HELP=1              ;;
        -o)
            ORDENA=1            ;;
        -v | --version)
            VER=1               ;;
        -m)
            MAI=1               ;;
        *)
           echo 'Opção invalida, consulte o manual com a flag -h' && exit 1;;           
    esac
    shift
done

[ $HELP -eq 1 ] && echo "$MENSAGEM_USO" && exit 0
[ $ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $VER -eq 1 ] && echo "$VERSION" && exit 0
[ $MAI -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"