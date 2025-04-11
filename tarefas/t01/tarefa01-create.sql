-- Criação das tabelas

DROP TABLE IF EXISTS atividade_projeto CASCADE;
DROP TABLE IF EXISTS atividade CASCADE;
DROP TABLE IF EXISTS projeto CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS funcionario CASCADE;

CREATE TABLE funcionario (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sexo CHAR(1) NOT NULL,
    dt_nasc DATE NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    cod_depto INT
);

CREATE TABLE departamento (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    cod_gerente INT
);

CREATE TABLE projeto (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cod_depto INT,
    cod_responsavel INT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

CREATE TABLE atividade (
    codigo SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    cod_responsavel INT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

CREATE TABLE atividade_projeto (
    cod_projeto INT,
    cod_atividade INT,
    PRIMARY KEY (cod_projeto, cod_atividade)
);

-- Adicionando as FK
ALTER TABLE funcionario
ADD CONSTRAINT fk_func_depto FOREIGN KEY (cod_depto) REFERENCES departamento(codigo);

ALTER TABLE departamento
ADD CONSTRAINT fk_dep_gerente FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo);

ALTER TABLE projeto
ADD CONSTRAINT fk_proj_depto FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
ADD CONSTRAINT fk_proj_resp FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividade
ADD CONSTRAINT fk_ativ_resp FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo);

ALTER TABLE atividade_projeto
ADD CONSTRAINT fk_ativ_proj_projeto FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
ADD CONSTRAINT fk_ativ_proj_atividade FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo);
