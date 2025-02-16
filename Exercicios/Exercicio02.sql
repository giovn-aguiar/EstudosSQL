-- Script feito em DUPLA por GIOVANNA MONIQUE TORRES AGUIAR e THAIS CANDIDO GOMES.

CREATE DATABASE sprint1;
USE sprint1;

-- EXERCICIO 01
CREATE TABLE Atleta (
idAtleta INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
modalidade VARCHAR(40),
qtdMedalha INT
);

INSERT INTO Atleta (nome, modalidade, qtdMedalha) VALUES 
('Rayssa Leal', 'skate', 2), 
('Dayane dos Santos', 'ginastica', 4),
('Neymar', 'futebol', 5),
('Cristiano Ronaldo', 'futebol', 6),
('Leticia Bufoni', 'skate', 5),
('Rebeca Andrade', 'ginastica', 1);

-- Exibir todos os dados da tabela.
SELECT * FROM Atleta; 

-- Atualizar a quantidade de medalhas do atleta com id=1;
UPDATE Atleta SET qtdMedalha = 2 WHERE idAtleta = 1;

 -- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
UPDATE Atleta SET qtdMedalha = 3 WHERE idAtleta = 2;
UPDATE Atleta SET qtdMedalha = 5 WHERE idAtleta = 3;

-- Atualizar o nome do atleta com o id=4;
UPDATE Atleta SET nome = 'CR7' WHERE idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
ALTER TABLE Atleta ADD COLUMN DtNasc DATE;

-- Atualizar a data de nascimento de todos os atletas;
UPDATE Atleta SET DtNasc = '1970-09-10' WHERE idAtleta = 1;
UPDATE Atleta SET DtNasc = '1980-02-10' WHERE idAtleta = 2;
UPDATE Atleta SET DtNasc = '1990-10-01' WHERE idAtleta = 3;
UPDATE Atleta SET DtNasc = '1976-03-20' WHERE idAtleta = 4;
UPDATE Atleta SET DtNasc = '1978-02-03' WHERE idAtleta = 5;
UPDATE Atleta SET DtNasc = '1980-02-04' WHERE idAtleta = 6;

-- Excluir o atleta com o id=5;
DELETE FROM Atleta WHERE idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação;
SELECT * FROM Atleta WHERE modalidade NOT LIKE 'natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
SELECT * FROM Atleta WHERE qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
ALTER TABLE Atleta MODIFY COLUMN modalidade VARCHAR(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
DESCRIBE Atleta Modalidade;

-- Limpar os dados da tabela;
TRUNCATE TABLE Atleta;




-- EXERCICIO 02
CREATE TABLE Musica (
idMusica INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(40),
artista VARCHAR(40),
genero VARCHAR(40)
);

INSERT INTO Musica (titulo, artista, genero) VALUE
	('Abre o portão que eu cheguei', 'Gusttavo Lima', 'Sertanejo'),
    ('Amo Noite e Dia', 'Jorge & Mateus', 'Sertanejo'),
    ('Apaguei para todos', 'Ferrigem, Sorriso Maroto', 'pagode'),
    ('Aquela Pessoa', 'Henrique & Juliano', 'Sertanejo'),
    ('Cuidado cupido', 'Péricles e Luan Santana', 'pagode'),
    ('Uai', 'Zé Neto & Cristiano', 'Sertanejo'),
    ('Viciado', 'Matheus & Kauan', 'Sertanejo'),
    ('Volta por baixo', 'Henrique & Juliano', 'Sertanejo'),
    ('Sobrenome', 'Vitinho e Péricles', 'pagode');

-- Exibir todos os dados da tabela.
SELECT * FROM Musica;

--  Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE Musica ADD COLUMN curtidas INT;

-- Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE Musica SET curtidas = 12900 WHERE idMusica = 1;
UPDATE Musica SET curtidas = 17400 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 300000 WHERE idMusica = 3;
UPDATE Musica SET curtidas = 400000 WHERE idMusica = 4;
UPDATE Musica SET curtidas = 200000 WHERE idMusica = 5;
UPDATE Musica SET curtidas = 70000 WHERE idMusica = 6;
UPDATE Musica SET curtidas = 50000 WHERE idMusica = 7;
UPDATE Musica SET curtidas = 60400 WHERE idMusica = 8;
UPDATE Musica SET curtidas = 95200 WHERE idMusica = 9;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
ALTER TABLE Musica MODIFY COLUMN artista VARCHAR(80);

-- Atualizar a quantidade de curtidas da música com id=1
UPDATE Musica SET curtidas = 24500 WHERE idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3
UPDATE Musica SET curtidas = 53600 WHERE idMusica = 2;
UPDATE Musica SET curtidas = 500000 WHERE idMusica = 3;

SELECT * FROM Musica;

-- Atualizar o nome da música com o id=5
UPDATE Musica SET titulo = 'Melhor eu ir' WHERE idMusica = 5;
SELECT * FROM Musica;

-- Excluir a música com o id=4
DELETE FROM Musica WHERE idMusica = 4;
SELECT * FROM Musica;

-- Exibir as músicas onde o gênero é diferente de pagode
SELECT * FROM Musica WHERE genero !='pagode';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20000
SELECT * FROM Musica WHERE curtidas >= '20000';

-- Descrever os campos da tabela mostrando a atualização do campo artista
DESC Musica artista;

-- Limpar os dados da tabela
TRUNCATE TABLE Musica;
SELECT * FROM Musica;


-- EXERCICIO 03

CREATE TABLE Filme (
idFilme INT PRIMARY KEY AUTO_INCREMENT, 
titulo VARCHAR(50), 
genero VARCHAR(40), 
diretor VARCHAR(40)
);

INSERT INTO Filme (titulo, genero, diretor)VALUES
('clube da luta', 'drama', 'david fincher'), 
('seven', 'suspense', 'david fincher'), 
('psicopata americano', 'suspense', 'marry harron'), 
('zodiaco', 'suspense', 'david fincher'), 
('mad max: a estrada da fúria', 'ação', 'george miller'), 
('mad max 2: a caçada continua', 'suspense', 'david fincher'), 
('matrix', 'ficção científica', 'irmãs wachowski'), 
('matrix reloaded', 'ficção científica', 'irmas wachowski'), 
('bastardos inglórios', 'guerra', 'quentin tarantino');

-- Exibir todos os dados da tabela.
SELECT * FROM FILME;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
ALTER TABLE Filme ADD COLUMN protagonista VARCHAR(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;
UPDATE Filme SET protagonista = 'Edward Norton' WHERE idFilme = 1;
UPDATE Filme SET protagonista = 'Brad Pitt' WHERE idFilme = 2;
UPDATE Filme SET protagonista = 'Christian Bale' WHERE idFilme = 3;
UPDATE Filme SET protagonista = 'Jake Gyllenhal' WHERE idFilme = 4;
UPDATE Filme SET protagonista = 'Tom Hardy' WHERE idFilme = 5;
UPDATE Filme SET protagonista = 'Mel Gibson'  WHERE idFilme = 6;
UPDATE Filme SET protagonista = 'Keanu Reeves' WHERE idFilme = 7;
UPDATE Filme SET protagonista = 'Melanie Laurent' WHERE idFilme = 8;
UPDATE Filme SET protagonista = 'Melanie Laurent' WHERE idFilme = 9;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
ALTER TABLE Filme MODIFY COLUMN diretor VARCHAR(150);

--  Atualizar o diretor do filme com id=5;
UPDATE Filme SET diretor = 'George M' WHERE idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7;
UPDATE Filme SET diretor = 'David F' WHERE idFilme = 2;
UPDATE Filme SET diretor = 'Wachowskis' WHERE idFilme = 7;

-- Atualizar o título do filme com o id=6;
UPDATE Filme SET titulo = 'MadMax2' WHERE idFilme = 6;

-- Excluir o filme com o id=3;
DELETE FROM Filme WHERE idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;
SELECT * FROM Filme WHERE genero NOT LIKE 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
SELECT * FROM Filme WHERE genero LIKE 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
DESCRIBE Filme protagonista;
DESCRIBE Filme diretor;

-- Limpar os dados da tabela;
TRUNCATE TABLE Filme;




-- EXERCÍCIO 04

CREATE TABLE Professores (
idProfessor INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR (50),
Especialidade VARCHAR(40),
DtNasc DATE
);

INSERT INTO Professores (Nome, Especialidade, DtNasc) VALUES
	('Antonieta de Barros', 'jornalista', '1901-07-11'),
    ('Paulo Freire', 'Pedagogia', '1921-09-19'),
    ('Darcy Ribeiro', 'sociólogo e escritor', '1922-10-26'),
    ('Albert Einstein', 'Fisico', '1879-03-14'),
    ('Marie Curie', 'Cientista', '1867-11-7'),
    ('Hannah Arendt', 'Filosofa', '1906-10-14');
        
--  Exibir todos os dados da tabela
SELECT * FROM Professores;

-- Inserir um novo professor;
INSERT INTO Professores (Nome, Especialidade, DtNasc) VALUES
	('Jade de Lima', 'Escritora', '1957-07-11');
    
-- Excluir o professor onde o idProfessor é igual a 7
DELETE FROM Professores WHERE idProfessor = 7;

-- Atualizar a data de nascimento do idProfessor igual a 3
UPDATE Professores SET DtNasc = '1957-07-25'
WHERE idProfessor = 3;

-- Limpar os dados da tabela
TRUNCATE TABLE Professores;
SELECT * FROM Professores;


-- Exercicio 05

CREATE TABLE Curso (
idCurso INT PRIMARY KEY AUTO_INCREMENT, 
Nome VARCHAR(50),
sigla CHAR(3),
coordenador VARCHAR(50)
);

INSERT INTO Curso (Nome, sigla, coordenador) VALUES
('Análise e Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
('Ciencias da Computação', 'CCO', 'Professor 2'),
('Sistemas de Informação', 'SIS', 'Professor 3');

-- Exibir todos os dados da tabela.
SELECT * FROM CURSO;

-- Exibir apenas os coordenadores dos cursos.
SELECT coordenadores FROM Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM curso WHERE sigla LIKE 'ADS';

--  Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM Curso ORDER BY nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT coordenador FROM Curso;

-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE 'A%';

-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '%O';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '_n';

-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '%a_';

--  Elimine a tabela.
DROP TABLE Curso;


-- EXERCÍCIO 06

CREATE DATABASE Revista;
USE Revista;

CREATE TABLE Revista ( 
idRevista INT PRIMARY KEY AUTO_INCREMENT, 
nome VARCHAR(40), 
categoria VARCHAR(30) 
); 

-- Inserir 4 registros na tabela, mas sem informar a categoria. 
INSERT INTO Revista VALUES 
(1, 'Vogue', 'Moda'), 
(2, 'VEJA', 'jornalistico'), 
(3, 'Family Circle', 'entretenimento'), 
(4,'Better Homes & Gardens', 'Culinária'); 

-- Exibir todos os dados da tabela 
SELECT * FROM Revista; 

-- Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente. 
UPDATE revista SET categoria = 'jornalistico' WHERE idRevista = 1; 
UPDATE revista SET categoria = 'entretenimento' WHERE idRevista = 2; 
UPDATE revista SET categoria = 'humor' WHERE idRevista = 3; 

-- Insira mais 3 registros completos. 
INSERT INTO Revista VALUES 
(5, 'Game Informer', 'Jogos'), 
(6, 'Época', 'noticias'), 
(7, 'Forbes', 'noticias'); 

-- Exibir novamente os dados da tabela. 
SELECT * FROM revista; 

-- Exibir a descrição da estrutura da tabela. 
DESC revista; 

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres. 
ALTER TABLE revista MODIFY COLUMN categoria VARCHAR(40); 

-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria. 
DESC revista; 

-- Acrescentar a coluna periodicidade à tabela, que é varchar(15). 
ALTER TABLE revista ADD COLUMN periodicidade VARCHAR(15); 

--  Exibir os dados da tabela. 
SELECT * FROM revista; 

-- Excluir a coluna periodicidade da tabela. 
ALTER TABLE revista DROP COLUMN periodicidade; 



-- Exercício 07
CREATE TABLE Carro(
IdCarro INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(40),
Placa CHAR(7)
);
ALTER TABLE carro AUTO_INCREMENT = 1000;

-- Inserir 4 registros na tabela;
INSERT INTO Carro(Nome, Placa) VALUES 
('Gol', '28a73hd'),
('Ferrari', '28hd82h'),
('Corolla', '83jh3jm'),
('Ferrari', '1k29k42');

-- Exibir todos os dados da tabela.
SELECT * FROM Carro;

-- Insira mais 3 registros sem a placa dos carros.
INSERT INTO Carro(Nome) VALUES
('Siena'),
('Versa');

-- Exibir novamente os dados da tabela.
SELECT * FROM Carro;

-- Exibir a descrição da estrutura da tabela.
DESCRIBE Carro;

-- Alterar a tabela para que a coluna nome possa ter no máximo 28 caracteres.
ALTER TABLE Carro MODIFY COLUMN nome VARCHAR(28);

--  Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna;
DESCRIBE Carro;

--  Acrescentar a coluna ano à tabela, que é char(4);
ALTER TABLE Carro ADD COLUMN ano CHAR(4);

-- Atualizar todos os dados nulos da tabela;
UPDATE carro SET ano = '2000' WHERE IdCarro = 1000;
UPDATE carro SET ano = '2001' WHERE IdCarro = 1001;
UPDATE carro SET ano = '2002' WHERE IdCarro = 1002;
UPDATE carro SET ano = '2003' WHERE IdCarro = 1003;
UPDATE carro SET ano = '2004' WHERE IdCarro = 1004;
UPDATE carro SET ano = '2005' WHERE IdCarro = 1005;

UPDATE carro SET placa = '29fj392' WHERE IdCarro = '1004';
UPDATE carro SET placa = '293kd93' WHERE IdCarro = '1005';

