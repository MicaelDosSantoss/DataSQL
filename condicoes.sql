-- Igualdade (Equal):
SELECT * FROM tabela WHERE coluna = valor;

-- Desigualdade (Not Equal):
SELECT * FROM tabela WHERE coluna <> valor;

-- Maior que (Greater Than):
SELECT * FROM tabela WHERE coluna > valor;

-- Menor que (Less Than):
SELECT * FROM tabela WHERE coluna < valor;

-- Maior ou igual a (Greater Than or Equal To):
SELECT * FROM tabela WHERE coluna >= valor;

-- Menor ou igual a (Less Than or Equal To):
SELECT * FROM tabela WHERE coluna <= valor;

-- Intervalo (Between):
SELECT * FROM tabela WHERE coluna BETWEEN valor1 AND valor2;

-- Valores em uma lista (IN):
SELECT * FROM tabela WHERE coluna IN (valor1, valor2, valor3);

-- Valores não em uma lista (NOT IN):
SELECT * FROM tabela WHERE coluna NOT IN (valor1, valor2, valor3);

-- Valores nulos (IS NULL):
SELECT * FROM tabela WHERE coluna IS NULL;

-- Valores não nulos (IS NOT NULL):
SELECT * FROM tabela WHERE coluna IS NOT NULL;

-- Operadores lógicos (AND, OR):
SELECT * FROM tabela WHERE coluna1 = valor1 AND coluna2 = valor2;
SELECT * FROM tabela WHERE coluna1 = valor1 OR coluna2 = valor2;

Combinação de condições:
SELECT * FROM tabela WHERE (condição1 AND condição2) OR condição3;

-- Wildcards (LIKE) para pesquisa de padrões:
SELECT * FROM tabela WHERE coluna LIKE 'padrão%';
-- percentual - indica uma cadeira de caracteres, onde indica que só seu que a pesquisa começa com padrão, pórem n sei como termina, nisso eu coloco o percetual.
--  percentual exclusivo do operador LIKE
SELECT * FROM tabela WHERE coluna LIKE '__A%';
-- underline - ele pula caracteres, como tem 2 underlines ele pulou dois caracteres, trazendo apenas resultados que tem A no terceira A. 

-- Negando uma condição (NOT):
SELECT * FROM tabela WHERE NOT coluna = valor;