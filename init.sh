#!/bin/bash
apt upgrade -y && apt update
pkg install unzip
curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1432.zip
unzip terraria-server-1432.zip
rm terraria-server-1432.zip
chmod +x 1432/Linux/TerrariaS*
rm 1432/Linux/System*
rm 1432/Linux/Mono*
rm 1432/Linux/monoconfig
rm 1432/Linux/mscorlib.dll
cls
echo -e "Select Grimle repo in main repository"
sleep 5
termux-change-repo
