# termux-terraserver
Use Termux for Terraria Server

How to install

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

| When install all you can use mono for run TerrariaServer.exe, but you need to create a config file and delete some files for fix errors.

| delete files
```
rm 1432/Linux/System*
rm 1432/Linux/Mono*
rm 1432/Linux/monoconfig
rm 1432/Linux/mscorelib.dll
```

| Create config fil in home: myconfig.txt
```html
world=/data/data/com.termux/files/home/world.wld
autocreate=1
worldname=MyWorld
worldpath=/data/data/com.termux/files/home
```

| So, that's be right, now you can run the server
```bash
cd 1432/Linux
```
```bash
mono --server --gc=sgen -O=all ./TerrariaServer.exe -config $PWD/myconfig.txt
```
or more specific
```bash
mono --server --gc=sgen -O=all ./TerrariaServer.exe -config /data/data/com.termux/files/home/myconfig.txt
```

-----------
