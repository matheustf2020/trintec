#!/bin/bash
echo "Instalação NORDVPN!"
echo "Dependencias: "
read -t1
echo "Curl, Perl, Wget"
read
echo "Pressione enter, para inicializar o script."
wget -c https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb?_ga=2.177902309.1333113327.1605809651-1422797021.1605809651 -O nordvpn.deb
read -t5
sudo apt-get install ./nordvpn.deb -y
sudo apt-get update
sudo apt-get install nordvpn -y
clear
echo "Instalação finalizada!, para checar pressione alguma tecla!"
read
nordvpn status
exit
