-- ===============================
-- DADOS DE EXEMPLO
-- ===============================

-- AUTORES
INSERT INTO autores (nome, biografia, data_nascimento) VALUES
('George Orwell', 'Autor britânico conhecido por obras distópicas.', '1903-06-25'),
('J.K. Rowling', 'Autora da série Harry Potter.', '1965-07-31'),
('Yuval Noah Harari', 'Historiador e escritor israelense.', '1976-02-24');

-- GENEROS
INSERT INTO generos (nome) VALUES
('Ficção'),
('Fantasia'),
('Não-ficção'),
('Biografia');

-- LEITORES
INSERT INTO leitores (email, nome, idade, genero) VALUES
('ana@email.com', 'Ana Silva', 25, 'Feminino'),
('carlos@email.com', 'Carlos Souza', 30, 'Masculino'),
('leitor@email.com', NULL, NULL, NULL);

-- LIVROS
INSERT INTO livros (titulo, data_publicacao, isbn, resumo, autor_id, genero_id) VALUES
('1984', '1949-06-08', '9780451524935', 'Distopia sobre vigilância estatal.', 1, 1),
('Harry Potter e a Pedra Filosofal', '1997-06-26', '9780747532699', 'Primeiro livro da saga Harry Potter.', 2, 2),
('Sapiens: Uma Breve História da Humanidade', '2011-01-01', '9780062316097', 'História da evolução humana.', 3, 3);

-- RESENHAS
INSERT INTO resenhas (livro_id, leitor_id, nota, comentario, data_resenha) VALUES
(1, 1, 5, 'Livro incrível e assustadoramente atual.', '2025-01-10'),
(2, 2, 4, 'Muito envolvente e mágico.', '2025-01-12'),
(3, 1, 5, 'Leitura essencial para entender a humanidade.', '2025-01-15');