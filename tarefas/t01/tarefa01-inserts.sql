TRUNCATE TABLE departamento, funcionario, projeto, atividade, atividade_projeto RESTART IDENTITY CASCADE;

INSERT INTO departamento (descricao, cod_gerente) VALUES
('Departamento de Computação e Tecnologia', NULL),
('Departamento de Geografia', NULL),
('Departamento de História', NULL),
('Departamento de Matemática', NULL),
('Departamento de Relações Internacionais', NULL),
('Departamento de Saúde', NULL),
('Departamento de Sociologia', NULL);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('Joao Silva', 'M', '1985-01-15', 5000.00, 1),
('Maria Oliveira', 'F', '1990-02-20', 4500.00, 2),
('Carlos Pereira', 'M', '1988-03-25', 6000.00, 3),
('Ana Santos', 'F', '1992-04-30', 5500.00, 4),
('Pedro Almeida', 'M', '1987-05-05', 7000.00, 5);

UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_depto) VALUES
('Matheus Santos', 'M', '1985-01-15', 5000.00, 1),
('Eloisa Filgueira', 'F', '1990-02-20', 4500.00, 1),
('Carlos dos Anjos', 'M', '1988-03-25', 6000.00, 2),
('Maria de Fatima', 'F', '1992-04-30', 5500.00, 2),
('Odete Maia', 'F', '1987-05-05', 7000.00, 3),
('Breno Dantas', 'M', '1985-01-15', 5000.00, 4),
('Apolonia Macedo', 'F', '1990-02-20', 4500.00, 5),
('Joana da Silva', 'F', '1975-03-02', 4500.00, 5),
('Denis Bismarck', 'M', '1988-03-25', 4900.00, 3),
('Fernanda Delgado', 'F', '1992-04-30', 5500.00, 3),
('Kelvin Belo', 'M', '1987-05-05', 7000.00, 1),
('Mario Bidon', 'M', '1992-04-30', 5500.00, 5),
('Luiz Bortoleto', 'M', '1987-05-05', 7000.00, 4),
('Joao Pedro', 'M', '1987-05-05', 6200.00, 4),
('Maria Aparecida', 'F', '1980-05-05', 6500.00, 7),
('Daniel de Souza', 'F', '1990-12-11', 5200.00, 7);

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('SIGpro', 'Desenvolvimento de um sistema de gerenciamento de projetos', 1, 6, '2025-01-01', '2025-12-31'),
('Mapeamento Urbano', 'Projeto de mapeamento das regiões urbanas', 2, 8, '2025-03-01', '2025-10-01'),
('Acervo Digital', 'Digitalização de documentos históricos', 3, 10, '2025-02-15', '2025-09-30'),
('Matemática na Prática', 'Oficinas interativas de matemática nas escolas públicas', 4, 18, '2025-04-01', '2025-11-15'),
('Observatório Global', 'Monitoramento de relações internacionais em tempo real', 5, 13, '2025-05-01', '2025-12-20');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de Requisitos', 'Análise detalhada dos requisitos do sistema', 7, '2025-01-03', '2025-01-20'),
('Modelagem de Dados', 'Criação do modelo relacional do banco de dados', 16, '2025-01-21', '2025-02-05'),
('Desenvolvimento Backend', 'Implementação das regras de negócio', 16, '2025-02-06', '2025-03-15'),
('Desenvolvimento Frontend', 'Criação da interface do usuário', 6, '2025-03-16', '2025-04-10');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Coleta de Dados', 'Recolhimento de dados geográficos', 9, '2025-03-01', '2025-03-31'),
('Análise de Dados', 'Análise dos dados coletados', 9, '2025-04-01', '2025-04-30'),
('Relatórios', 'Geração de relatórios sobre as regiões mapeadas', 11, '2025-05-01', '2025-05-31'),
('Publicação', 'Publicação dos mapas e relatórios', 11, '2025-06-01', '2025-06-30');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(2, 5),
(2, 6),
(2, 7),
(2, 8);

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Digitalização', 'Digitalização de documentos históricos', 12, '2025-02-01', '2025-02-28'),
('Classificação', 'Classificação dos documentos digitalizados', 12, '2025-03-01', '2025-03-31'),
('Indexação', 'Indexação dos documentos para busca', 14, '2025-04-01', '2025-04-30'),
('Acesso Online', 'Disponibilização dos documentos online', 14, '2025-05-01', '2025-05-31');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(3, 9),
(3, 10),
(3, 11),
(3, 12);

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Planejamento', 'Planejamento das oficinas de matemática', 15, '2025-04-01', '2025-04-30'),
('Aplicação', 'Aplicação das oficinas nas escolas públicas', 15, '2025-05-01', '2025-05-31');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(4, 13),
(4, 14);

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Monitoramento', 'Monitoramento das relações internacionais', 19, '2025-05-01', '2025-05-31'),
('Análise', 'Análise dos dados de monitoramento', 19, '2025-06-01', '2025-06-30');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(5, 15),
(5, 16);




