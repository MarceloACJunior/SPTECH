CREATE DATABASE sprint1;
USE sprint1;

-- EX 1
CREATE TABLE Atleta(
	idAtleta INT NOT NULL PRIMARY KEY auto_increment,
    nome VARCHAR(40) NOT NULL,
    modalidade VARCHAR(40) NOT NULL,
    qtdMedalha INT    
);

INSERT INTO Atleta(nome, modalidade, qtdMedalha) VALUES 
	('Marcelo','Bilhar',3),
	('Leonardo','Ping-Pong',20),
	('Will','Ping-Pong',3),
	('Luan','Natação',10),
	('Isabela','Leventamento de peso',0),
	('Pedro','Natação',5),
	('Jeferson','Levantamento de peso',2),
	('Marcos','Bilhar',2),
	('Felipy','Ginástica artística',0),
	('Yago','Ginástica artística',10),
	('Matheus','Futebol',18),
	('Borges','Futebol',0);
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM atleta;

-- b) Exibir apenas os nomes e quantidade de medalhas dos atletas.
SELECT nome, qtdMedalha FROM atleta;

-- c) Exibir apenas os dados dos atletas de uma determinada modalidade.
SELECT * FROM atleta
WHERE modalidade = "Futebol";

-- d) Exibir os dados da tabela ordenados pela modalidade.
SELECT * FROM atleta
ORDER BY modalidade;

-- e) Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
SELECT * FROM atleta
ORDER BY qtdMedalha DESC;

-- f) Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
SELECT * FROM atleta
WHERE nome LIKE "%s%";

-- g) Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
SELECT * FROM atleta 
WHERE nome LIKE "m%";

-- h) Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
SELECT * FROM atleta 
WHERE nome LIKE "%o";

-- i) Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
SELECT * FROM atleta 
WHERE nome LIKE "%r_";

-- Eliminar a tabela.
DROP TABLE atleta;

-- EX 2
CREATE TABLE Musica (
	idMusica INT PRIMARY KEY auto_increment,
    titulo VARCHAR(40),
    artista VARCHAR(40),
    genero VARCHAR(40)
);

INSERT INTO Musica (titulo, artista, genero) VALUES
	('Dias de luta, dias de glória','Charlie Brown Jr.', 'Pop'),
	('Estilo Cachorro','Racionais Mc','Rap'),
	('Gods Plan','Drake', 'Rap'),
	('Mina do Condomínio','Seu Jorge', 'Pop'),
	('Thunder','Imagine Dragons','Indie'),
	('Paradise', 'Coldplay', 'Indie'),
	('Blinding Lights','The Weeknd','R&G Alternativo'),
	('Save Your Tears','The Weeknd','R&G Alternativo'),
	('Locked Out of Heaven','Bruno Mars','Pop'),
	('Sunflower','Post Malone','Rap'),
	('Closer','The Chainsmokers','Eletronica'),
	('Hear Me Now','Alok','Eletronica'),
	('Centuries','Fall Out Boy','Pop Punk'),
	('Uma Thurman','Fall Out Boy','Pop Punk'),
	('Worlds Smallest Violin','AJR','Indie');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
SELECT titulo, artista FROM musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero.
SELECT * FROM musica
WHERE genero = 'rap';

-- d) Exibir apenas os dados das músicas de um determinado artista.
SELECT * FROM musica
WHERE artista = 'The Weeknd';

-- e) Exibir os dados da tabela ordenados pelo título da música.
SELECT * FROM musica
ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
SELECT * FROM musica
ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
SELECT * FROM musica
WHERE titulo LIKE 'b%';

-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
SELECT * FROM musica
WHERE artista LIKE '%e';

-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM musica
WHERE genero LIKE '_o%';

-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM musica
WHERE titulo LIKE '%a_';

-- k) Elimine a tabela.
DROP TABLE musica;

-- EX 3
CREATE TABLE Filme(
	idFilme INT PRIMARY KEY auto_increment,
    titulo VARCHAR(50),
    genero VARCHAR(40),
    diretor VARCHAR(40)
);

INSERT INTO Filme (titulo, genero, diretor) VALUES
	('Harry Potter e a Pedra Filosofal','Fantasia','David Heyman'),
	('Harry Potter e a Câmara Secreta','Fantasia','David Heyman'),
	('Piratas do Caribe: A Maldição do Pérola Negra','Ação','Gore Verbinski'),
	('Piratas do Caribe: O Baú da Morte','Ação','Gore Verbinski'),
	('Maze Runner: Correr ou Morrer','Ficção','Wes Ball'),
	('Maze Runner: Prova de Fogo','Ficção','Wes Ball'),
	('Meu Malvado Favorito','Infantil','Chris Renaud'),
	('Meu Malvado Favorito 2','Infantil','Chris Renaud'),
	('Gente Grande','Comédia','Dennis Dugan'),
	('Gente Grande 2','Comédia','Dennis Dugan'),
	('It - A Coisa','Terror','Andy Muschietti'),
	('It – Capítulo Dois','Terror','Andy Muschietti');
    
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM filme;

-- b) Exibir apenas os títulos e os diretores dos filmes.
SELECT titulo, diretor FROM filme;

-- c) Exibir apenas os dados dos filmes de um determinado gênero.
SELECT * FROM filme 
WHERE genero = 'Fantasia';

-- d)  Exibir apenas os dados dos filmes de um determinado diretor.
SELECT * FROM filme 
WHERE diretor = 'Wes Ball';

-- e) Exibir os dados da tabela ordenados pelo título do filme.
SELECT * FROM filme
ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
SELECT * FROM filme
ORDER BY diretor DESC;

-- g) Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
SELECT * FROM filme 
WHERE titulo LIKE 'g%';

-- h) Exibir os dados da tabela, dos filmes cujo artista termine com uma determinada letra.
SELECT * FROM filme
WHERE diretor LIKE '%i';

-- i) Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
SELECT * FROM filme 
WHERE genero LIKE '_i%';

-- j) Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
SELECT * FROM filme
WHERE genero LIKE '%i_';

-- k) Elimine a tabela
DROP TABLE filme;

-- EX 4 

CREATE TABLE professor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    especialidade VARCHAR(40),
    dtNasc DATE
);

INSERT INTO professor(nome, especialidade, dtNasc) VALUES
	('Rogério','Banco de dados','1995-10-05'),
    ('Jailson','Algoritmo','1990-09-19'),
    ('Adeilson','Algoritmo','1990-5-25'),
    ('Marcelo','Banco de dados','1998-09-05'),
    ('Will','Programação Web','1996-03-31'),
    ('Leonardo','Programação Web','1995-07-10'),
    ('Luan','Arq Comp','1994-07-01'),
    ('Jefferson','Arq Comp','1990-12-05'),
    ('Pedro','Tecnologia da informação','1992-04-03'),
    ('Augusto','Tecnologia da informação','1993-12-31'),
    ('Rodrigo','Socioemocional','1994-06-10'),
    ('José','Pesquisa e inovação','1992-10-09'),
    ('Tulio','Pesquisa e inovação','1998-09-10'),
    ('Felipe','Socioemocional','1996-11-05');
    
-- a) Exibir todos os dados da tabela.
SELECT * FROM professor;

-- b) Exibir apenas as especialidades dos professores.
SELECT especialidade FROM professor;

-- c) Exibir apenas os dados dos professores de uma determinada especialidade.
SELECT * FROM professor
WHERE especialidade = 'Banco de Dados';

-- d) Exibir os dados da tabela ordenados pelo nome do professor.
SELECT * FROM professor
ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
SELECT * FROM professor
ORDER BY dtNasc DESC;

-- f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
SELECT * FROM professor 
WHERE nome LIKE 'J%';

-- g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '_o%';

-- i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM professor
WHERE nome LIKE '%o_';

-- j) Elimine a tabela.
DROP TABLE professor;

-- EX 5
CREATE TABLE curso(
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(30)
);

INSERT INTO curso(nome, sigla, coordenador) VALUES
	('Análise e Desenvolvimento de Sistemas','ADS','Marcelo'),
	('Sistemas de Informação','SIS','Will'),
	('Ciência da Computação','CCO','Leonardo'),
	('Administração','ADM','Luan'),
	('Desenvolvimento de Sistemas','DS','Pedro'),
	('Recursos Humanos','RH','Jefferson');

-- a) Exibir todos os dados da tabela.
SELECT * FROM curso;

-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM curso;

-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM curso
WHERE sigla = 'ADS';

-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM curso
ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM curso
ORDER BY coordenador DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM curso 
WHERE nome LIKE 'A%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM curso
WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM curso 
WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM curso
WHERE nome LIKE '%a_';

-- j) Elimine a tabela.
DROP TABLE curso;

-- EX 6
CREATE TABLE revista(
	idRevista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO revista (nome, categoria) VALUES
('VEJA',''),
('ISTO É',''),
('EPOCA',''),
('France Footbal','');

-- a) Exibir todos os dados da tabela.
SELECT * FROM revista;

-- b) Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.

UPDATE revista
SET categoria = 'Futebol'
WHERE idRevista = 4;

UPDATE revista
SET categoria = 'Noticias'
WHERE idRevista = 3;

UPDATE revista
SET categoria = 'Noticias'
WHERE idRevista = 2;

UPDATE revista
SET categoria = 'Geral'
WHERE idRevista = 1;

SELECT * FROM revista;

-- c) Insira mais 3 registros completos.
INSERT INTO revista (nome, categoria) VALUES
	('ESPN','Esporte'),
	('World Soccer','Futebol'),
	('Placar','Futebol'),
	("L'EQUIPE",'Futebol');

-- d) Exibir novamente os dados da tabela.
SELECT * FROM revista;

-- e) Exibir a descrição da estrutura da tabela.
DESC revista;

-- f) Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE revista MODIFY categoria VARCHAR(40);

-- g) Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC revista;

-- h) Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE revista ADD COLUMN peridiocidade VARCHAR(15);

-- i) Exibir os dados da tabela.
SELECT * FROM revista;

-- j) Excluir a coluna periodicidade da tabela.
ALTER TABLE revista DROP peridiocidade;







