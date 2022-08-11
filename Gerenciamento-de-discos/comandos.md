# Gerenciamento de Discos

lsblk -> mostra os discos existentes no sistema.

fdisk -l --> mostra os discos com mais detalhes.

## Particionamento

ex. fdisk /dev/sdb <- disco fisico
"m" para help

mkfs.(ext3, ext4, ntfs ...) <- formantando partição

## Montando e desmontando discos via terminal

pasta raiz /mnt ou outra pasta criada pelo usuario.
mkdir disco2 -> criar pasta para montar disco

mount /dev/sdb /mnt/disco2 -> para montar disco "sdb" na pasta disco2

umount /dev/sdb -> para desmontar o disco "sdb"

## Montando disco automaticamente

nano /etc/fstab

Incluir linha com local do disco

/dev/sdb /disk2 ext4 defaults 0 0 (exemplo)
