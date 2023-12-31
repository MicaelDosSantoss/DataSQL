-- Google Sala de Aula
-- Google Sala de Aula
-- DESENVOLVIMENTO EM BANCO DE DADOS
-- TURMA 47 - MM
-- Início
-- Agenda
-- Inscrito
-- Pendentes
-- M
-- MODELAGEM DE BANCO DE DADOS
-- TURMA 47 - MM
-- D
-- DESENVOLVIMENTO EM BANCO DE DADOS
-- TURMA 47 - MM
-- P
-- PROJETO EM DESENVOLVIMENTO DE SOFTWARE
-- TURMA 47 - MM
-- A
-- ALGORITMOS E PRATICAS DE PROGRAMACAO
-- TURMA 47 - MM
-- Turmas arquivadas
-- Configurações
-- Lista de Exercícios nº 2 - CORREÇÃO
-- Ana Leda Silva Moraes
-- •
-- 27 de set.
-- Correção dos exercícios da lista nº 2.

-- Correção_Lista 2.txt
-- Texto
-- Comentários da turma

-- Adicionar comentário para a turma...

-- LISTA DE EXERCÍCIOS - Nº 2 - RESOLUÇÃO

-- 1-)	Crie a tabela INSTRUTOR (a partir da estrutura mostrada na tabela 1), já inserindo durante a criação, as constraints necessárias. O nome do instrutor não pode estar vazio.
-- Obs: os campos em negrito representam uma chave primária.

CREATE TABLE INSTRUTOR
(
idinst	 	number (4) 	CONSTRAINT instrutor_idinst_pk PRIMARY KEY	,
nome 		varchar2(30) 	NOT NULL					,
telefone 	varchar2 (14)							,
dtadm 		date								,
salario 	number(7,2)
);



-- 2-) Apague do banco de dados a constraint de chave primária da tabela INSTRUTOR, inserindo-a novamente, em seguida. 

ALTER TABLE INSTRUTOR DROP CONSTRAINT INSTRUTOR_IDINST_PK

-- OU
ALTER TABLE INSTRUTOR DROP PRIMARY KEY
Obs: Isso só é possível com a chave primária. As demais constraints devem ser eliminadas dando seu nome, conforme o primeiro comando.

ALTER TABLE INSTRUTOR 
ADD
(
CONSTRAINT INSTRUTOR_IDINST_PK PRIMARY KEY(IDINST)	
)

--OU

ALTER TABLE INSTRUTOR
MODIFY
(
IDINST CONSTRAINT INSTRUTOR_IDINST_PK PRIMARY KEY
)


-- 3-)	Crie a tabela TURMA definindo as colunas e suas restrições de chaves. Ocorreu algum erro? Porque ocorreu este erro? Faça o exercício 5 e retorne para este exercício criando a tabela, inclusive com a chave primária.

CREATE TABLE turma
(
idturma 	number(4)	CONSTRAINT turma_idturma_pk PRIMARY KEY					,
sala 		number (2)										,
idinst 		number (4) 										,
idcurso 	number(4) 	CONSTRAINT turma_idcurso_fk 			REFERENCES curso	,
				CONSTRAINT turma_idinst_fk FOREIGN KEY(idinst) 	REFERENCES instrutor	
);

Obs: As constraints de foreign key foram criadas de formas diferentes, uma junto da coluna e a outra longe da coluna para que observem a diferença na escrita.


-- 4-) Crie a tabela ALUNO com todas as constraints.

CREATE TABLE aluno
(
matric		number(4)	CONSTRAINT aluno_matric_pk PRIMARY KEY					,
nome 		varchar2(25) 	NOT NULL								,
telefone 	varchar2(14)										,
endereco 	varchar2(40)										,
uf 		char(2)
);


-- 5-) Crie a tabela CURSO já com as constraints necessárias.

CREATE TABLE curso
(
idcurso 	number(4)	CONSTRAINT curso_idcurso_pk PRIMARY KEY					,
nome 		varchar2(25) 	NOT NULL								,
carga_horaria 	number(3)										,
preco 		number (7,2)										,
pre_requisito 	varchar2 (100)
);


-- 6-) Apague a tabela ALUNO, apagando também, todas as suas restrições. Em seguida, crie-a novamente apenas com os campos, sem definir restrições.

DROP TABLE ALUNO CASCADE CONSTRAINT;

CREATE TABLE aluno
(
matric		number(4)					,
nome 		varchar2(25) 					,
telefone 	varchar2(14)					,
endereco 	varchar2(40)					,
uf 		char(2)
);


-- 7-) Insira todas as restrições necessárias na tabela ALUNO.

ALTER TABLE ALUNO 
ADD 
(
CONSTRAINT aluno_matric_pk PRIMARY KEY(matric)	
);


ALTER TABLE ALUNO 
MODIFY
(
nome varchar2(25) NOT NULL
)


-- 8-) Crie a tabela HISTORICO já com as constraints necessárias.

CREATE TABLE historico
(
idturma 	number(4) 	CONSTRAINT historico_idturma_fk REFERENCES turma		,
matric		number (4)      CONSTRAINT historico_matric_fk  REFERENCES aluno		,
nota    	number(2) 	CONSTRAINT historico_nota_ck 	CHECK (nota between 0 and 10)	,
CONSTRAINT	historico_id_pk PRIMARY KEY (idturma,matric)
);


-- 9-) Altere a tabela INSTRUTOR modificando a coluna NOME para 60 caracteres.

ALTER TABLE INSTRUTOR 
MODIFY
(
NOME varchar2(60)
);


-- 10-)  Insira as linhas abaixo na tabela INSTRUTOR.

-- IDInst	Nome		Telefone	DtADM		Salario
-- 01	José Marinho	9999-1234	SYSDATE		2000.00
-- 02	Euler Soares	4343-2000	SYSDATE		1850.18
-- 03	Fabio Costa	1234-5000	SYSDATE		1250.00
-- 04	Maria Clara	4567-9000	SYSDATE		900.26

INSERT INTO INSTRUTOR
(IDINST, NOME, TELEFONE, DTADM, SALARIO)
VALUES
(1, 'JOSE MARINHO', '9999-1234', SYSDATE, 2000);

-- Obs: Cada linha deve ser inserida com um comando similar a esse.



-- Correção_Lista 2.txt
-- Exibindo Correção_Lista 2.txt…