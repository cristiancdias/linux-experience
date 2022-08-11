# Copiando arquivos

cp --help

cp /home/cristian/arquivo.txt /disk2/
cp /home/cristian/arquivo.txt <- origem /disk2/ <- destino

cp /home/cristian/_.txt /disk2/
_.txt <- todos os arquivos .txt

cp -i /home/cristian/\* /disk2/
-i <- perguntar se quer sobrepor
-r <- recursivamente - copia tudo inclusive pastas e conteudo.
-v <- verbose - visualizar o que esta sendo copiado

# Renomenando movendo arquivos

mv --help

mv /home/cristian/arquivo.txt /disk2/novonomearquivo.txt <- move e muda o nome

- tambem pode ser usado para renomear arquivos

# Manipulando processos

ps -> chama os processos em execução

flags

a -> os processos de todos os usuarios
u -> nome dos usuarios e hora que iniciou o processo
x -> os processos iniciados fora do console

ex. ps aux

kill -> matar processos

ex. kill 12345 <- ps id

ex. killall chrome <- nome do processo

### Verificar usuarios logados no sistema.

w <- mostra os usuarios logagos

who -a <- mostra o pin do usuario

kill 2311 <- pin do usuario
