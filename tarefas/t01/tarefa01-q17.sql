-- questao 17 feita com CTE e join

WITH salario_gerentes AS (
    SELECT 
        d.codigo AS cod_depto,
        f.salario AS salario_gerente
    FROM departamento d
    JOIN funcionario f ON d.cod_gerente = f.codigo
),
maior_salario AS (
    SELECT MAX(salario_gerente) AS maior_salario
    FROM salario_gerentes
)
SELECT 
    p.codigo,
    p.descricao
FROM projeto p
JOIN salario_gerentes sg ON p.cod_depto = sg.cod_depto
JOIN maior_salario ms ON sg.salario_gerente = ms.maior_salario;
