# ODBC e ORM

## Scripts

## Resumo sobre ODBC

Open DataBase Connectivity (ODBC) é uma interface (API) padrão que permite que aplicações acessem bancos de dados de forma independente do sistema gerenciador de banco de dados (SGBD). Ele atua como um intermediário entre o aplicativo e o banco de dados, permitindo também que qualquer aplicação se conecte a qualquer BD, desde que exista um driver ODBC compatível.

No TypeScript não é comum utilizar ODBC, mas há uma forma através da biblioteca "odbc" do npm.
A aplicação TS usa um driver ODBC para enviar comandos SQL ao banco, independentemente do tipo de SGBD.

## Resumo sobre ORM

Object Relational é uma técnica que permite mapear objetos da programação orientada a objetos (como classes e objetos) para registros em um banco de dados relacional (tabelas e colunas). Fazendo com que seja facilitado o acesso e a manipulação dos dados usando código OO.

O ORM mais utilizado pelo TS é o Prisma, que converte modelos definidos em um arquivo .prisma em classes e métodos TypeScript.
