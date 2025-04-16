-- questao 1 da lista, utilizando CTE

WITH salarios_depto2 AS (
    SELECT salario
    FROM funcionario
    WHERE cod_depto = 2
)
SELECT f.nome
FROM funcionario f
WHERE f.salario > ALL (
    SELECT salario FROM salarios_depto2
);


