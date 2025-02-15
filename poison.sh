#!/bin/bash

echo "██████╗  ██████╗ ██╗███████╗ ██████╗ ███╗   ██╗"
echo "██╔══██╗██╔═══██╗██║██╔════╝██╔═══██╗████╗  ██║"
echo "██████╔╝██║   ██║██║███████╗██║   ██║██╔██╗ ██║"
echo "██╔═══╝ ██║   ██║██║╚════██║██║   ██║██║╚██╗██║"
echo "██║     ╚██████╔╝██║███████║╚██████╔╝██║ ╚████║"
echo "╚═╝      ╚═════╝ ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═══╝"
echo "       Por https://github.com/Freitaszkb"
echo "------------------------------------------------"

KERNEL_VERSION=$(uname -r)
echo "[+] Versão do Kernel detectada: $KERNEL_VERSION"

declare -A EXPLOITS

EXPLOITS["2.6.17"]="https://www.exploit-db.com/exploits/9542"
EXPLOITS["2.6.18"]="https://www.exploit-db.com/exploits/15285"
EXPLOITS["2.6.19"]="https://www.exploit-db.com/exploits/33321"
EXPLOITS["2.6.24"]="https://www.exploit-db.com/exploits/744"
EXPLOITS["2.6.27"]="https://www.exploit-db.com/exploits/8369"
EXPLOITS["2.6.28"]="https://www.exploit-db.com/exploits/10613"
EXPLOITS["2.6.29"]="https://www.exploit-db.com/exploits/2013"
EXPLOITS["2.6.30"]="https://www.exploit-db.com/exploits/14814"
EXPLOITS["2.6.31"]="https://www.exploit-db.com/exploits/15704"
EXPLOITS["2.6.32"]="https://www.exploit-db.com/exploits/40839"
EXPLOITS["2.6.34"]="https://www.exploit-db.com/exploits/23674"
EXPLOITS["2.6.37"]="https://www.exploit-db.com/exploits/15704"
EXPLOITS["2.6.39"]="https://www.exploit-db.com/exploits/30604"
EXPLOITS["3.0"]="https://www.exploit-db.com/exploits/2031"
EXPLOITS["3.2"]="https://www.exploit-db.com/exploits/50912"
EXPLOITS["3.4"]="https://www.exploit-db.com/exploits/27297"
EXPLOITS["3.10"]="https://www.exploit-db.com/exploits/35370"
EXPLOITS["3.13"]="https://www.exploit-db.com/exploits/37292"
EXPLOITS["3.14"]="https://www.exploit-db.com/exploits/35370"
EXPLOITS["3.18"]="https://www.exploit-db.com/exploits/40616"
EXPLOITS["4.4"]="https://www.exploit-db.com/exploits/47124"
EXPLOITS["4.10"]="https://www.exploit-db.com/exploits/45010"
EXPLOITS["4.15"]="https://www.exploit-db.com/exploits/45553"
EXPLOITS["5.4"]="https://www.exploit-db.com/exploits/47961"
EXPLOITS["5.8"]="https://www.exploit-db.com/exploits/49577"

FOUND=0

for VERSION in "${!EXPLOITS[@]}"; do
    if [[ "$KERNEL_VERSION" == "$VERSION"* ]]; then
        echo "[!] Vulnerabilidade detectada para o kernel $VERSION!"
        echo "    → Exploit disponível em: ${EXPLOITS[$VERSION]}"
        FOUND=1
    fi
done

if [ $FOUND -eq 0 ]; then
    echo "[+] Nenhuma vulnerabilidade conhecida encontrada para este kernel."
else
    echo "[!] Recomenda-se atualizar o kernel imediatamente!"
fi
