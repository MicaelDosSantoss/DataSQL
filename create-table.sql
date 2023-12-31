CREATE TABLE SALA 
()

CREATE TABLE PROFESSOR
(
    IDP NUMBER(5) PRIMARY KEY,
    NOME VARCHAR(50) NOT NULL,
    MATERIA VARCHAR2(3),
    ID_SALA NUMBER(5) FOREIGN KEY ID_SALA REFERENCES SALA
    CHECK MATERIA IN ('POR','MAT','BIO','GEO','HIS','EDU')
)


CREATE TABLE ALUNO
(
    ID NUMBER(5) PRIMARY KEY,
    NOME VARCHAR2(50) NOT NULL,
    CPF NUMBER(50) CONSTRAINT CPF_U UNIQUE
);