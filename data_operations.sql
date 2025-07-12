INSERT INTO Autor (nome, nacionalidade) VALUES ('J.R.R. Tolkien', 'Britânica');
INSERT INTO Autor (nome, nacionalidade) VALUES ('Jane Austen', 'Britânica');
INSERT INTO Autor (nome, nacionalidade) VALUES ('Gabriel Garcia Marquez', 'Colombiana');

INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES ('O Hobbit', 1937, 1);
INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES ('O Senhor dos Anéis', 1954, 1);
INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES ('Orgulho e Preconceito', 1813, 2);
INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES ('Cem Anos de Solidão', 1967, 3);
INSERT INTO Livro (titulo, ano_publicacao, id_autor) VALUES ('O Amor nos Tempos do Cólera', 1985, 3);

UPDATE Livro SET ano_publicacao = 1968 WHERE titulo = 'Cem Anos de Solidão';

SELECT * FROM Autor;
SELECT * FROM Livro;
SELECT L.titulo, A.nome AS autor_nome FROM Livro L JOIN Autor A ON L.id_autor = A.id WHERE A.nacionalidade = 'Britânica';

DELETE FROM Livro WHERE titulo = 'O Hobbit';

SELECT * FROM Livro;