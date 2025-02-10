-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Cliente (
email VARCHAR(30),
nome VARCHAR(100),
senha VARCHAR(10),
cpf VARCHAR(11) PRIMARY KEY
)

CREATE TABLE Pacote (
id_pacote VARCHAR(10),
valor DECIMAL(10),
destino VARCHAR(150),
PRIMARY KEY(id_pacote,valor)
)

CREATE TABLE Endereço (
id_endereco NUMERIC(10) PRIMARY KEY,
endereco VARCHAR(100),
cidade VARCHAR(100),
estado VARCHAR(30),
cep VARCHAR(10)
)

CREATE TABLE Compra (
id_pacote VARCHAR(10),
valor DECIMAL(10),
cpf VARCHAR(11),
FOREIGN KEY(valor,,) REFERENCES Pacote (id_pacote,valor),
FOREIGN KEY(cpf) REFERENCES Cliente (cpf)
)

CREATE TABLE Tem (
id_endereco NUMERIC(10),
cpf VARCHAR(11),
FOREIGN KEY(id_endereco) REFERENCES Endereço (id_endereco),
FOREIGN KEY(cpf) REFERENCES Cliente (cpf)
)

