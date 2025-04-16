# Tarefa 1 - Consultas Aninhadas, Visões e CTEs

## Definição e preenchimento das tabelas

**[Criação das tabelas](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-create.sql)**

**[Inserção dos dados](https://github.com/quirinof/pabd/blob/main/tarefas/t01/tarefa01-inserts.sql)**

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
CROSS JOIN projeto;
```

Isso vai unir funcionario e departamento onde as colunas com o mesmo nome (ex: cod_depto) forem iguais.
