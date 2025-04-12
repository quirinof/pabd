TRUNCATE TABLE departamento, funcionario, projeto, atividade, atividade_projeto RESTART IDENTITY CASCADE;

INSERT INTO funcionario (nome, sexo, dt_nasc, salario) VALUES
('Joao Silva', 'M', '1985-01-15', 9000.00),
('Maria Oliveira', 'F', '1990-02-20', 8500.00),
('Carlos Pereira', 'M', '1988-03-25', 7000.00),
('Ana Santos', 'F', '1992-04-30', 8000.00),
('Pedro Almeida', 'M', '1987-05-05', 10000.00);

INSERT INTO departamento (descricao) VALUES
('Departamento de Computação e Tecnologia'),
('Departamento de Geografia'),
('Departamento de História'),
('Departamento de Matemática'),
('Departamento de Relações Internacionais');

UPDATE departamento SET cod_gerente = 1 WHERE codigo = 1;
UPDATE departamento SET cod_gerente = 2 WHERE codigo = 2;
UPDATE departamento SET cod_gerente = 3 WHERE codigo = 3;
UPDATE departamento SET cod_gerente = 4 WHERE codigo = 4;
UPDATE departamento SET cod_gerente = 5 WHERE codigo = 5;

UPDATE funcionario SET cod_depto = 1 WHERE codigo = 1;
UPDATE funcionario SET cod_depto = 2 WHERE codigo = 2;
UPDATE funcionario SET cod_depto = 3 WHERE codigo = 3;
UPDATE funcionario SET cod_depto = 4 WHERE codigo = 4;
UPDATE funcionario SET cod_depto = 5 WHERE codigo = 5;