#!/usr/bin/env bash
#
# tarefa4 - Atualiza pacotes, repositorios e faz a limpeza apos instalação!
#
# Autor:      Lucas Ferreira
#
# ------------------------------------------------------------------------ #
#  Este programa irá atualizar pacotes, repositorios ou fazer a limpeza
#de pacotes!
#
#  Exemplos:
#      $ ./tarefa4 -r
#      Neste exemplo o script atualizará os repositorios.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 16/04/2022, Lucas:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.4(1)-release
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
HELP="
        $(basename $0) [ OPÇÕES DE USO ]

        -r                  Atualiza os repositorios.
        -p                  Atualiza os pacotes.
        -c                  Limpa os pacotes baixados e ja instalados.
        --all               Atualiza os repositorios, pacotes e faz a limpeza.
        -v | --version      Mostra a versão do programa.
        -h                  Menu de ajuda.
"
VERSION="1.0"

REPOS=0
PACKAGES=0
CLEAN=0
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #     
test -z "$1"  && echo 'Por favor passe uma flag!'

while test -n "$1"; do
   case "${1}" in
        -h)
            echo "${HELP}" && exit 0                                                                                     ;; 
        -v | --version)
            echo "${VERSION}" && exit 0                                                                                  ;; 
        -r)
            REPOS=1                                                                                                      ;;
        -p)
            PACKAGES=1                                                                                                   ;;
        -c)
            CLEAN=1                                                                                                      ;;
        --all)
            sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get clean && echo "Tudo Pronto" && exit 0      ;;
        *)
           echo 'Por favor passe um parametro valido ou consulte o menu de ajuda com a flag -h'    ;;
   esac
   shift
done
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
[ $REPOS -eq 1 ] && sudo apt-get update -y
[ $PACKAGES -eq 1 ] && sudo apt-get upgrade -y
[ $CLEAN -eq 1 ] && sudo apt-get clean && echo 'Limpo'
# ------------------------------------------------------------------------ #