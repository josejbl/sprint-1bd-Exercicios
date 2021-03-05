CREATE DATABASE Empresa;

USE Empresa

CREATE TABLE Empresa 
(
	idEmpresa INT PRIMARY KEY IDENTITY
	,Razaõsocial VARCHAR (200) NOT NULL
);

CREATE TABLE Marca
(
	idMarca   INT PRIMARY KEY IDENTITY
	,Nome     VARCHAR(200) NOT NULL
);

CREATE TABLE Modelo
(
	idModelo INT PRIMARY KEY IDENTITY
	,idMarca INT FOREIGN KEY REFERENCES Marca (idMarca)
	,Nome    VARCHAR (200) NOT NULL 
);
CREATE TABLE Veiculo 
(
	idVeiculo  INT PRIMARY KEY IDENTITY 
	,idEmpresa INT FOREIGN KEY REFERENCES Empresa (idEmpresa)
	,idModelo  INT FOREIGN KEY REFERENCES Modelo (idModelo)
	,Placa     CHAR(7) NOT NULL
);

CREATE TABLE Cliente 
(
	idCliente  INT PRIMARY KEY IDENTITY 
	,Nome      VARCHAR (200) NOT NULL
	,CPF       CHAR(11) NOT NULL
	
);
CREATE TABLE Aluguel 
(
	idAluguel  INT PRIMARY KEY IDENTITY 
	,idVeiculo INT FOREIGN KEY REFERENCES Veiculo (idVeiculo)
	,idCliente INT  FOREIGN KEY REFERENCES Cliente (idcliente)
	,Valor     DECIMAL NOT NULL 
);



