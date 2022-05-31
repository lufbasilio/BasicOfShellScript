#!/usr/bin/env bash
#
# Sistema de Usuarios.sh - Lista Usuarios
#
# Autor:      Lucas Ferreira
#
# ------------------------------------------------------------------------ #
#  Este programa irá manipular usuários
#  Exemplos:
#      $ ./sistema_de_usuarios
#      Neste exemplo o script será executado.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 23/05/2022, Lucas:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#  5.1.4(1)-release
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #

BD="banco_de_dados.txt"

VERDE="\033[32m"
VERMELHO="\033[31m"

MSG="### SITEMA DE USUARIOS ###"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #

[ ! -e "$BD" ] && echo -e "${VERMELHO}O ARQUIVO NAO EXISTE" && exit 1
[ ! -r "$BD" ] && echo -e "${VERMELHO}O ARQUIVO NAO TEM PERMISSAO DE LEITURA" && exit 1
[ ! -w "$BD" ] && echo -e "${VERMELHO}O ARQUIVO NAO TEM PERMISSAO DE ESCRITA" && exit 1
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

Lista_Usuario (){
    local id=$(echo $1 | cut -d : -f 1)
    local nome=$(echo $1 | cut -d : -f 2)
    local email=$(echo $1 | cut -d : -f 3)

    echo -e "${VERDE}$id $nome - $email"
}

Valida_Usuario (){
    grep -i -q "$1:" "$BD"
    [ $? -eq 1 ] && echo 'Usuario não existe' || echo 'Usuario Existe'
}

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #

case "$1" in
    -l)
        while read -r linhas; do
            [ "$(echo "$linhas" | cut -c1)" = '#' ] && continue
            [ ! $linhas ] && continue
            Lista_Usuario "$linhas"
        done < $BD  
    ;;
    -v)
        echo "Informe um usuario que deseja procurar"
        read USUARIO
        Valida_Usuario "$USUARIO"
    ;;
esac

# ------------------------------------------------------------------------ #
