-- Para armazenamento de datas no SQL é preciso usar DATE para o armazenamento de datas

CREATE TABLE nome_tabela( data_nascimento DATE)

-- Para inserir essas datas é preciso utilizar o to_date() com a data, exp.

INSERT INTO nome_tabela(data_nascimento) VALUES(to_date('09/10/2023','dd/mm/yyyy'))

-- Dessa forma será armazenado o valor em DATE;

SYSDATE -- trás a data atual 