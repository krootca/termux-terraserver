#!/bin/bash
apt upgrade -y && apt update
pkg install unzip -y
pkg install mono -y

curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
unzip terraria-server-1449.zip
rm terraria-server-1449.zip
chmod +x 1449/Linux/TerrariaS*
rm 1449/Linux/System*
rm 1449/Linux/Mono*
rm 1449/Linux/monoconfig
rm 1449/Linux/mscorlib.dll
rm -rf 1449/Mac
rm -rf 1449/Windows

touch ~/../usr/bin/Terra
chmod +x ~/../usr/bin/Terra
echo -e "#!/bin/bash\nmono ${PWD}/1449/Linux/TerrariaServer.exe" > ~/../usr/bin/Terra
Terra
