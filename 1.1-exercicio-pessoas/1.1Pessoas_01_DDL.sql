CREATE DATABASE Cliente;


USE Cliente;

CREATE TABLE Cliente
(
	idCliente INT PRIMARY KEY IDENTITY
	,Nome	 VARCHAR(100) NOT NULL 
);


CREATE TABLE Email
(
	idEmail     INT PRIMARY KEY IDENTITY
	,idcliente  INT FOREIGN KEY REFERENCES Cliente (idCliente)
	,Endereco   VARCHAR(200) NOT NULL
);

CREATE TABLE Telefone
(
	idTelefone  INT  PRIMARY KEY IDENTITY
	,idcliente  INT FOREIGN KEY REFERENCES Cliente (idCliente)
	,Enderco    INT NOT NULL

);
CREATE TABLE CNH 
(
	idCNH	 INT PRIMARY KEY IDENTITY
	,idcliente  INT FOREIGN KEY REFERENCES Cliente (idCliente)
	,Numero	 VARCHAR(20) NOT NULL 
);
