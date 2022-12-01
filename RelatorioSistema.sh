#!/bin/bash

################################
#    Nome: Relatório Sistema   #
#    Data: 01/12/2022          #
#    Autor: João Schütz        # 
################################

echo -e "\nNome da Máquina: $(hostname)."
echo "Data e Hora Atual: $(date)."
echo "Tempo ativo:$(uptime | cut -d"u" -f1-2 | cut -d"," -f1)."
echo -e "Versão do Kernel: Linux $(uname -r).\n"
echo "Quantidade de CPUs: $(head -13 /proc/cpuinfo | tail +13 | cut -d ' ' -f3)."
echo "Modelo da CPU: $(head -5 /proc/cpuinfo | tail +5 | cut -d ' ' -f3-)."
echo ""
echo -e "Memória Total:$(head -3 /proc/meminfo | tail +3 | cut -d":" -f2).\n"
