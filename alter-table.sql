-- Adicionar campo

ALTER TABLE nome_table ADD ( 'novo-campo');

-- Para alterar os nomes das colunas da tabela deverá usar esse comando

ALTER TABLE nome_table COLUMN  nome_para_alterar TO novo_nomwe;

ALTER TABLE EMP RENAME COLUMN JOB TO CARGO;


-- Adicionar itens

ALTER TABLE nome_tabela 
ADD 
(
CONSTRAINT aluno_matric_pk PRIMARY KEY(matric)	
);

-- Modificar a tabela

ALTER TABLE nome_tabela 
MODIFY
(
nome varchar2(25) NOT NULL
)