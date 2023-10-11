
-- Salva linhas so codigos, exp.

-- Inserts, alteraçôes, deletes
COMMIT

-- A Funcionalidade dele lembra um Backup caso vc faça algo de errado

-- ATENÇÃO, ele altera tudo desde o chamado do commit, caso algumas alterações
-- sejam feitas depois do commit elas não vão ser comitadas

-- Para dar o Backup é preciso inserir o comando 
ROLLBACK

-- Os commits pode ser automaticos, porém é algo perigoso, caso um comando seja
-- inserido fazendo algo de errado com o banco ele vai salvar, sendo impossivel
-- voltar para trás.

-- commit é rollback podem ser apenas colocados em comandos sql DML(Insert, Update, Delete);