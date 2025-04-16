-- questao 4 com CTE e JOIN
WITH gerentes AS (
    SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL
)
SELECT
    f.nome,
    f.salario,
    d.descricao AS departamento
FROM
    funcionario f
JOIN
    departamento d ON f.cod_depto = d.codigo
WHERE
    f.codigo NOT IN (SELECT cod_gerente FROM gerentes)
ORDER BY
    f.cod_depto;
