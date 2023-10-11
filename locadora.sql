

-- DROP table categoria CASCADE ;

-- DROP table filme CASCADE ;

-- DROP table dvd CASCADE ;

-- DROP table cliente CASCADE ;

-- DROP table ator CASCADE ;

-- DROP table ator_filme CASCADE ;

-- DROP table cliente_dvd CASCADE ;

CREATE TABLE CATEGORIA
(
codcateg 	int 			primary key		,
descricao 	varchar(50) 		not null		,
constraint categoria_desc_uk unique (descricao)
);

CREATE TABLE CLIENTE
(
codcli 		int 			primary key		,
prenome 	varchar(50) 		not null		,
sobrenome 	varchar(50)					, 
endereco 	varchar(70)					, 
telefone 	varchar(20)
);

CREATE TABLE ATOR
(
codator 	int 			primary key		,
nome_popular 	varchar(50) 		not null		,
nome_artistico 	varchar(50)					, 
datanasc 	date
);

CREATE TABLE FILME
(
CODFILME 	INT 			primary key		,
TITULO		VARCHAR(70)		not null		,
CODCATEG	INT 						,
FOREIGN KEY(CODCATEG) REFERENCES CATEGORIA(CODCATEG)
);

CREATE TABLE DVD
(
NUMDVD		INT			PRIMARY KEY				,
TIPO		VARCHAR(1)		CHECK(TIPO IN ('S','D','s', 'd'))	,
CODFILME	INT								,
FOREIGN KEY(CODFILME) REFERENCES FILME(CODFILME)
);

CREATE TABLE CLIENTE_DVD  -- TABELA ALUGA
(
CODCLI		INT						,
NUMDVD		INT						,
DTRET		DATE						,
DTDEV		DATE						,
FOREIGN KEY(CODCLI) REFERENCES CLIENTE(CODCLI)			,
FOREIGN KEY(NUMDVD) REFERENCES DVD(NUMDVD)			,
PRIMARY KEY(CODCLI, NUMDVD, DTRET)				
);

CREATE TABLE ATOR_FILME  -- TABELA ESTRELA
(
CODATOR		INT					,
CODFILME	INT					,
FOREIGN KEY(CODATOR) REFERENCES ATOR(CODATOR)		,
FOREIGN KEY(CODFILME) REFERENCES FILME(CODFILME)	,
PRIMARY KEY(CODATOR, CODFILME)
);