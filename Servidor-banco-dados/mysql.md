# Servidor banco de dados

#### Instalação

`$ apt install mysql-server-8.0 -y`

#### Acessando banco

`$ mysql -u root -p`

#### Mostrar bancos ativos

`$ show databases;` <- sempre colocar ";" no final

#### Criando novo banco

`$ create database meubanco;`

#### Criando primeira tabela

`$ use meubanco;`
`$ create table Pessoas (PessoaID int, Nome varchar(50), Sobrenome varchar(50), Endereco varchar(100), Cidade varchar(50));`

Exibindo tabela

`$ show tables;`

Inserindo dados

`$ insert into Pessoas (PessoaId, Nome, Sobrenome, Endereco, Cidade) VALUES(1, 'Cris', 'Cop', 'av. duque de caxias, 2700', 'Xambre-PR');`
