#!/usr/bin/env bash

# ------------------------------- VARIÁVEIS ----------------------------------------- #
CONFIGURACAO="archive.conf"

USAR_CORES=
USAR_MAIUSCULAS=

MSG="Olá Mundo!"

VERDE="\033[32m"
VERMELHO="\033[31m"
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
[ ! -r "$CONFIGURACAO" ] && echo -e "${VERMELHO}ERRO DE LEITURA" && exit 1
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
Parametros() {
    local variavel="$(echo $1 | cut -d = -f 1)"
    local valor="$(echo $1 | cut -d = -f 2)"

    if [ "$variavel" = "MAIUSCULAS" ]; then
        USAR_MAIUSCULAS="$valor"       
    else
        USAR_CORES="$valor"
    fi
}
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
while read -r lines; do
    [ "$(echo $lines | cut -c1)" = '#' ] && continue
    [ ! "$lines" ] && continue
    Parametros "$lines"
done < $CONFIGURACAO

echo "$USAR_CORES"
echo "$USAR_MAIUSCULAS"
# ------------------------------------------------------------------------ #
