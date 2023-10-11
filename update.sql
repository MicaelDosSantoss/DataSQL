UPDATE nome_tabela SET  nome_da_coluna = novo_valor WHERE nome_da_coluna = valor; 

-- codigo puro

UPDATE PESSOA SET CPF = 400 WHERE IDP = 4; 

-- Update - para atualizar linhas 
-- set para setar o novo valor da coluna
-- where - para filtrar qual valor será trocado

-- É possivel colocar varias colunas no set, exp

UPDATE PESSOA SET NOME = 'ALAN', CPF = 9320 WHERE IDP = 1; 