# Servidores de arquivos Samba

www.samba.org

instalar

`$ apt install samba -y`

### configurar diretorio

usar um disco para sistema operacional e um disco para arquivos

ex. usar /disk2
`$ mkdir publica`

`chmod 777 publica`

### arquivo de configuração do samba

`$ nano /etc/samba/smb.conf`

ultima linha
[publica] <- nome da pasta
path = /disk2/publica <- caminho da pasta
writable = yes
guest ok = yes
guest only = yes

### reiniciar serviço

`$ systemctl restart smbd` <- reiniciar o samba

`$ systemctl status smbd` <- verificar status

`$ systemctl enable smbd` <- iniciar com sistema

### Acessando servidor via rede

no windows digitar na barra de endereço

ex. \\10.0.0.1\publica

clicar com botão direito em Este Computador > Mapear Unidade de Rede > Escolher unidade > \\10.0.0.1\publica

no linux abrir nautilus
smb://10.0.0.1/publica
