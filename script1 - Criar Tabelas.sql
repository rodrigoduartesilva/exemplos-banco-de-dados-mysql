-- Comando para criar um banco de dados 
-- CREATE DATABASE <nome_do_banco>

CREATE DATABASE viagens;

-- Criando um banco de dados, para você poder realizar operações dentro dele, precisa seleciona-lo.
-- USE <nome_do_banco>

USE viagens;

-- Criando tabelas
-- CREATE TABLE <nome_da_tabela>(<coluna1>, <coluna2>...);
-- Cada coluna deve conter seu nome e seu tipo

CREATE TABLE IF NOT EXISTS usuario(
	id INT,
    nome VARCHAR(40) NOT NULL COMMENT 'Nome do usuário',
    email VARCHAR(30) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
    data_nascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
    endereco varchar(50) NOT NULL COMMENT 'Endereço do usuário'
);

CREATE TABLE IF NOT EXISTS destinos(
	id INT,
    nome VARCHAR(40) NOT NULL UNIQUE COMMENT 'Nome do destino',
    descricao VARCHAR(255) NOT NULL COMMENT 'Descrição do destino'
);

CREATE TABLE IF NOT EXISTS reservas(
	id INT COMMENT 'Identificador unico de reserva',
    id_usuario INT COMMENT 'Referência ao ID do usuário que realizou a reserva',
    id_destino INT COMMENT 'Referencia ao ID do destino da reserva',
    data DATE COMMENT 'Data da reserva',
    status VARCHAR(20) DEFAULT 'pendente' COMMENT 'Status da reserva (confirmada, pendente, cancelada, analise)' 
);