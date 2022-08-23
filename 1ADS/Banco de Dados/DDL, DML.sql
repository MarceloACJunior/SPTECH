-- CRIAR BANCO DE DADOS
CREATE DATABASE faculdade;
-- SELECIONAR O BANCO DE DADOS
USE faculdade;

-- TODA TABELA TEM QUE TER CHAVE PRIMÁRIA
CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(45),
bairro varchar(45)
);

-- NOSSO PRIMEIRO SELECT
SELECT * FROM aluno;

-- INSERIR DADOS NA TABELA ALUNO
INSERT INTO aluno VALUES 
	('01222999','Vivian Silva', 'Paraíso');
    
-- INSERINDO VÁRIOS ALUNOS NUM COMANDO
INSERT INTO aluno VALUES 
	('01212072', 'Sara', 'Consolação'),
	('01222063', 'Paulo', 'Guaianazes'),
	('01222998', 'Rafael', 'Bom Retiro');

-- Aula 08/08    
INSERT INTO aluno VALUES 
	('01222001', 'Jonatas', 'Freguesia do Ó'),
	('01222169', 'Lucas', 'Pirituba'),
	('01222202', 'Matheus', 'Jaguaré');  
    
SELECT * FROM aluno;

-- ORDENAR PELO CAMPO NOME
SELECT * FROM aluno ORDER BY nome;

-- Ordenar em ordem decrescente
SELECT * FROM aluno ORDER BY nome DESC;

-- Inserir mais um aluno chamado Matheus
INSERT INTO aluno VALUES 
	('01222009', 'Matheus', 'Metalúrgico');
    
-- ordenando pelo nome, porém se o nome for igual, bairro
SELECT * FROM aluno ORDER BY nome, bairro;

-- Exibir apenas os alunos com o nome Matheus
SELECT * FROM aluno WHERE nome = 'Matheus';

-- Andres me deve o primeiro salário
-- Exibir apenas os alunos que começam com m
SELECT * FROM aluno WHERE nome LIKE 'M%';

-- Jonatas me deve seu segundo salário
-- Exibir apenas os alunos que contem a letra t
SELECT * FROM aluno WHERE nome LIKE '%t%';

-- Exibir apenas os alunos que terminam com a letra n
SELECT * FROM aluno WHERE nome LIKE '%n';

select * from aluno;
SELECT * FROM aluno WHERE nome LIKE '%n %';

-- Valendo um ouro branco
-- Exibir apenas o bairro do aluno que o segundo nome 
-- começa com S
select nome,bairro from aluno where nome like '% s%';

-- Excluir a prof. Vivian
SELECT * FROM aluno;
DELETE FROM aluno WHERE ra = '01222999';

-- Atualizar o nome Matheus para Matheus de Jaguaré
UPDATE aluno SET nome = 'Matheus de Jaguaré'
	WHERE ra = '01222202';
select * from aluno;

-- Alterar a estrutura da tabela, acrescentando o campo email
ALTER TABLE aluno ADD COLUMN email varchar(100);

DESC aluno;
DESCRIBE aluno;

SELECT * FROM aluno;

UPDATE aluno SET email = 'matheus@sptech' 
	WHERE ra = '01222009';
    
UPDATE aluno SET email = 'sara@sptech' 
	WHERE ra = '01212072';

UPDATE aluno SET email = 'jonatas@sptech' 
	WHERE ra = '01222001';

DESCRIBE aluno;
-- Atualizar a coluna da tabela (tipagem)
ALTER TABLE aluno modify nome varchar(100);

-- Excluir uma coluna da tabela
ALTER TABLE aluno DROP bairro;

-- Exibir os ras maiores que 01222072
SELECT ra FROM aluno WHERE ra > '01222072';
-- menor
SELECT ra FROM aluno WHERE ra < '01222072';

-- exibir os ras diferentes do ra 01212072
SELECT * FROM aluno WHERE ra != '01212072';
SELECT * FROM aluno WHERE ra <> '01212072';

-- Exibir os ras entre 009 e 202
SELECT * FROM aluno WHERE ra between '01222009' and '01222202';

-- Exibir os ras específicos x e y
SELECT * FROM aluno WHERE ra in ('01212072', '01222063');