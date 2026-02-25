-- ===============================
-- BANCO DE DADOS: EDITORA DE LIVROS
-- Schema relacional completo
-- ===============================

-- ===============================
-- TABELA: autores
-- ===============================
CREATE TABLE autores (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  biografia TEXT,
  data_nascimento DATE
);

-- ===============================
-- TABELA: generos
-- ===============================
CREATE TABLE generos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL UNIQUE
);

-- ===============================
-- TABELA: leitores
-- ===============================
CREATE TABLE leitores (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  nome VARCHAR(255),
  idade INT,
  genero VARCHAR(50)
);

-- ===============================
-- TABELA: livros
-- ===============================
CREATE TABLE livros (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  data_publicacao DATE,
  isbn VARCHAR(20) UNIQUE,
  resumo TEXT,
  autor_id INT NOT NULL,
  genero_id INT NOT NULL,
  FOREIGN KEY (autor_id) REFERENCES autores(id),
  FOREIGN KEY (genero_id) REFERENCES generos(id)
);

-- ===============================
-- TABELA: resenhas
-- ===============================
CREATE TABLE resenhas (
  id SERIAL PRIMARY KEY,
  livro_id INT NOT NULL,
  leitor_id INT NOT NULL,
  nota INT NOT NULL CHECK (nota BETWEEN 1 AND 5),
  comentario TEXT,
  data_resenha DATE,
  UNIQUE (livro_id, leitor_id),
  FOREIGN KEY (livro_id) REFERENCES livros(id),
  FOREIGN KEY (leitor_id) REFERENCES leitores(id)
);