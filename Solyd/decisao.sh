#!/bin/bash

echo "O que deseja mostrar? Ifconfig(i) / Routes(r)?"

read op

if [ "$op" = "i" ]
then
	sudo ifconfig
fi

if [ "$op" = "r" ]
then
	sudo route -n
fi
