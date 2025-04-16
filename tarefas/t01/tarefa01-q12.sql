-- questao 12 usando join

SELECT 
    p.nome AS nome_projeto,
    p.data_inicio AS projeto_inicio,
    p.data_fim AS projeto_fim,
    a.descricao AS descricao_atividade,
    a.data_inicio AS atividade_inicio,
    a.data_fim AS atividade_fim
FROM projeto p
JOIN atividade_projeto ap ON p.codigo = ap.cod_projeto
JOIN atividade a ON ap.cod_atividade = a.codigo
ORDER BY p.nome, a.data_inicio;