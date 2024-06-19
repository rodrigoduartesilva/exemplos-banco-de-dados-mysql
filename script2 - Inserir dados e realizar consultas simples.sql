-- Inserindo um usuário dentro da tabela "usuario".
-- Comando -> INSERT INTO <nome_da_tabela> (<coluna1, coluna2, coluna3...>) VALUES(<valor_coluna1, valor_coluna2, valor_coluna3...>);
-- Inserir os nomes da colunas é opcional, no entanto, deve-se tomar cuidado quanto a inserção dos valores dentro das colunas na parte de valor_coluna, este, deve corresponder ao que foi declarado na criação da tabela

INSERT INTO usuario (id, nome, email, data_nascimento, endereco) 
VALUES (1, "Rodrigo Duarte", "email@email.com", "2000-08-06", "Rua numero um, 15, Rio de Janeiro");

INSERT INTO usuario (id, nome, email, data_nascimento, endereco) 
VALUES (2, "Samira Silva", "samira@email.com", "2011-02-12", "Rua numero dois, 6, São Paulo");

INSERT INTO usuario (id, nome, email, data_nascimento, endereco) 
VALUES (3, "Belinha Jonas", "belinha@email.com", "2018-05-02", "Rua numero Tres, 98, Minas Gerais");

-- Consultar valores na tabela
-- Comando -> SELECT * FROM <nome_da_tabela>; -> Listará todos os dados da tabela "nome_da_tabela"

SELECT * FROM usuario;

-- Consultar apenas os usuários com a id = 1

SELECT * FROM usuario WHERE id = 1;

-- Consultar os usuarios com a id = 2 e que seu primeiro nome seja "Samira"

SELECT * FROM usuario WHERE id = 2 AND nome LIKE "Samira%";

-- Consultar os usuarios que tenham a id = 3  e seu sobrenome seja "Jonas"

SELECT * FROM usuario WHERE id = 3  AND nome LIKE "%Jonas%";

-- Inserindo dados na tabela "destino"

INSERT INTO destinos (id, nome, descricao) VALUE (1, "Ponta Negra", "Localizado em Natal - RN");
INSERT INTO destinos (id, nome, descricao) VALUE (2, "Cristo Redentor", "Localizado em Rio de Janeiro - RJ");
INSERT INTO destinos (id, nome, descricao) VALUE (3, "Praia de Ipanema", "Localizado em Rio de Janeiro - RJ");

SELECT * FROM destinos;

INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUE (1, 1, 1, "2024-10-04", "análise");
INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUE (2, 2, 2, "2024-10-04", "confirmada");
INSERT INTO reservas (id, id_usuario, id_destino, data, status) VALUE (3, 3, 3, "2024-10-04", "cancelada");

SELECT * FROM reservas;