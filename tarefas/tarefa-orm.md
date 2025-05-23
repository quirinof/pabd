# ODBC e ORM

Atividade prática sobre odbc e orm com typescript

## Scripts

- [Database - Create](https://github.com/quirinof/pabd/blob/main/tarefas/orm/scripts-db/create_tables.sql)
- [Database - Insert](https://github.com/quirinof/pabd/blob/main/tarefas/orm/scripts-db/insert_tables.sql)
- [ODBC - all tasks](https://github.com/quirinof/pabd/blob/main/tarefas/orm/tasks/odbc.ts)
- [ORM - create activity](https://github.com/quirinof/pabd/blob/main/tarefas/orm/tasks/create-atv.ts)
- [ORM - update project leader](https://github.com/quirinof/pabd/blob/main/tarefas/orm/tasks/update-project-leader.ts)
- [ORM - list projects with activitys](https://github.com/quirinof/pabd/blob/main/tarefas/orm/tasks/find-projects-atv.ts)

## Resumo sobre ODBC

Open DataBase Connectivity (ODBC) é uma interface (API) padrão que permite que aplicações acessem bancos de dados de forma independente do sistema gerenciador de banco de dados (SGBD). Ele atua como um intermediário entre o aplicativo e o banco de dados, permitindo também que qualquer aplicação se conecte a qualquer BD, desde que exista um driver ODBC compatível.

No TypeScript não é comum utilizar ODBC, mas há uma forma através da biblioteca "odbc" do npm.
A aplicação TS usa um driver ODBC para enviar comandos SQL ao banco, independentemente do tipo de SGBD.

## Resumo sobre ORM

Object Relational é uma técnica que permite mapear objetos da programação orientada a objetos (como classes e objetos) para registros em um banco de dados relacional (tabelas e colunas). Fazendo com que seja facilitado o acesso e a manipulação dos dados usando código OO.

O ORM mais utilizado pelo TS é o Prisma, que converte modelos definidos em um arquivo .prisma em classes e métodos TypeScript.

## Execução

Para executar o projeto, é necessário ter o Node, o Docker e o Docker Compose instalados em sua máquina. Além disso, é preciso também que execute os scripts do banco e depois prisma para o uso do banco de dados.

```bash
npm install
docker compose up -d
docker exec -it postgres_pabd psql -U admin -d orm < ./scripts/<nome_do_arquivo>.sql
npx prisma db pull
npx prisma generate
```
