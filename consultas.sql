-- ===============================
-- CONSULTAS COM JOIN
-- ===============================

-- 1. Listar livros com autor e gênero
SELECT
  livros.titulo,
  autores.nome AS autor,
  generos.nome AS genero,
  livros.data_publicacao
FROM livros
JOIN autores ON livros.autor_id = autores.id
JOIN generos ON livros.genero_id = generos.id;

-- 2. Listar resenhas com leitor e livro
SELECT
  leitores.nome AS leitor,
  livros.titulo AS livro,
  resenhas.nota,
  resenhas.comentario,
  resenhas.data_resenha
FROM resenhas
JOIN leitores ON resenhas.leitor_id = leitores.id
JOIN livros ON resenhas.livro_id = livros.id;

-- 3. Média de avaliações por livro
SELECT
  livros.titulo,
  ROUND(AVG(resenhas.nota), 2) AS media_avaliacao
FROM resenhas
JOIN livros ON resenhas.livro_id = livros.id
GROUP BY livros.titulo;

-- 4. Quantidade de livros por autor
SELECT
  autores.nome,
  COUNT(livros.id) AS total_livros
FROM autores
LEFT JOIN livros ON livros.autor_id = autores.id
GROUP BY autores.nome;