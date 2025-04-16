# Tarefa 1 - Consultas Aninhadas, Visões e CTEs

## Definição e preenchimento das tabelas

**[Criação das tabelas](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-create.sql)**

**[Inserção dos dados](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-inserts.sql)**

**Exemplo para executar os scripts utilizando o Docker.**

```bash
cd pabd
docker exec -i postgres psql -U quirino -d pabd < tarefas/t01/nome_do_arquivo.sql
```

## Resolução das questões da lista

**[Questão 1](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-q01.sql)**

**[Questão 4](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-q04.sql)**

**[Questão 7](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-q07.sql)**

**[Questão 12](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-q12.sql)**

**[Questão 17](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-q17.sql)**

## Alternativas F e G da tarefa

### Natural Join

Combina duas tabelas automaticamente com base em todas as colunas com o mesmo nome em ambas as tabelas.

**Exemplo**:

```sql
SELECT *
FROM funcionario
NATURAL JOIN departamento;
```

Isso vai unir funcionario e departamento onde as colunas com o mesmo nome (ex: cod_depto) forem iguais.

### Cross Join

Combina todas as linhas de uma tabela com todas as linhas de outra tabela, resultando em uma tabela com todas as combinações possíveis entre as linhas das duas tabelas.

**Exemplo**:

```sql
SELECT *
FROM funcionario
CROSS JOIN projeto;
```

Isso retornará cada funcionário combinado com cada projeto, independentemente de qualquer relação entre eles.

## Windows Functions no Postgres

São um recurso para fazer cálculos sobre um conjunto de linhas relacionadas a uma linha específica — sem perder a linhas originais como ocorre com GROUP BY.
