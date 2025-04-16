-- questao 7 utilizando view e left join

CREATE OR REPLACE VIEW vw_total_funcionarios_por_depto AS
SELECT 
  cod_depto,
  COUNT(*) AS total_funcionarios
FROM funcionario
GROUP BY cod_depto;

SELECT 
  d.descricao AS nome_departamento,
  f.nome AS nome_gerente,
  COALESCE(v.total_funcionarios, 0) AS numero_funcionarios
FROM departamento d
LEFT JOIN funcionario f ON d.cod_gerente = f.codigo
LEFT JOIN vw_total_funcionarios_por_depto v ON d.codigo = v.cod_depto
ORDER BY d.codigo;