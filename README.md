# termux-terraserver
Use Termux for Terraria Server
Usar Termux para Servidor de Terraria

How to install
Como instalar

## Básico - Basic

| Install git - Instalar git
```bash
apt upgrade -y && apt update
```

```bash
pkg install git
```

| Clonar repositorio - Clone repository
```bash
git clone https://github.com/krootca/termux-terraserver
```

| Instalar init.sh - Install init.sh
```bash
bash init.sh
```
| Instalar mono, para esto cambia el repositorio a Grimle - Install mono, for this change the repository for Grimle
```bash
termux-change-repo
```

| Ahora instale mono - Now install mono

```bash
apt upgrade -y && apt update
```

| Note for mono: when asking you install ssl press enter (default)
```bash
pkg install mono
```

| Ahora corra el servidor - Now run the server

```bash
mono --server -O=all ./1432/Linux/TerrariaServer.exe
```

## Avanzado - Advance
```bash
apt upgrade -y && apt update
```
```bash
pkg install unzip
```
```bash
curl -O https://terraria.org/api/download/pc-dedicated-server/terraria-server-1432.zip
```
```bash
unzip terraria-server-1432.zip
```
```bash
rm terraria-server-1432.zip
```
```bash
chmod +x 1432/Linux/TerrariaS*
```

### Install mono | Warning: after that libssl.so.1.1 not found (reinstall termux for fix this)

| Note for termux - Change Repo for termux
| Chose Grimle for main repository and ok
```bash
termux-change-repo
```

```bash
apt upgrade -y && apt update
```

| Note for mono: when asking you install ssl press enter (default)
```bash
pkg install mono
```

| After that the libssl not found more.

### Terraria Server

| When install all you can use mono for run TerrariaServer.exe. But you need to delete some files for fix errors when mono run TerrariaServer.exe, that error is return Nothing.

| delete files
```
rm 1432/Linux/System*
rm 1432/Linux/Mono*
rm 1432/Linux/monoconfig
rm 1432/Linux/mscorelib.dll
```
## Run Terraria Server in Termux

| So, that's be right, now you can run the server
```bash
cd 1432/Linux
```

## Select Config File
```bash
mono --server -O=all ./TerrariaServer.exe
```
| You can create new world, delete world or chose world. Etc... But if you don't want select the world, or create a new world, set seed, size, etc... You can use a config file.

## Create config file example (Optional):
| Create config fil in home: myconfig.txt
```html
world=/data/data/com.termux/files/home/world.wld
autocreate=1
worldname=MyWorld
worldpath=/data/data/com.termux/files/home
```

or more specific
```bash
mono --server -O=all ./TerrariaServer.exe -config $PWD/myconfig.txt
```

```bash
mono --server -O=all ./TerrariaServer.exe -config /data/data/com.termux/files/home/myconfig.txt
```
-----------

# If you like this, please give me a star! <3 Love ya
