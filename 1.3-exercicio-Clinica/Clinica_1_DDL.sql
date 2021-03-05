CREATE DATABASE Clinica;

USE Clinica

CREATE TABLE Clinica
(
	idClinica		INT PRIMARY KEY IDENTITY
	,RazaoSocial	VARCHAR(200) NOT NULL 
	,CNPJ			VARCHAR (200)
	,Endereço	    VARCHAR (200)
);

CREATE TABLE Veterinarios
(
	idVeterinario  INT PRIMARY KEY IDENTITY 
	,idClinica     INT FOREIGN KEY REFERENCES Clinica (idClinica)
	,Nome          VARCHAR (100) NOT NULL
	,CRMV          VARCHAR(100) NOT NULL
);

CREATE TABLE Dono 
(
	idDono       INT PRIMARY KEY IDENTITY
	,Nome		 VARCHAR(100) NOT NULL   
);

CREATE TABLE TiposPets
(
	idTipospets       INT PRIMARY KEY IDENTITY 
	,Descricao        VARCHAR(100) NOT NULL
);

CREATE TABLE Raca 
(
	idRaca            INT PRIMARY KEY IDENTITY 
	,idTipopet        INT FOREIGN KEY REFERENCES TiposPets (idTipospets)
	,Descricao        VARCHAR (100) NOT NULL
);

CREATE TABLE Pets
(
	idPet INT PRIMARY KEY IDENTITY 
	,idRaca       INT FOREIGN KEY REFERENCES Raca (idRaca)
	,idDono       INT FOREIGN KEY REFERENCES Dono (idDono)
	,Nome		  VARCHAR (100) NOT NULL 
);

CREATE TABLE Atendimentos 
(
	idAtendimento     INT PRIMARY KEY IDENTITY
	,idPet            INT FOREIGN KEY REFERENCES Pets (idPet)
	,idVeterinario    INT FOREIGN KEY REFERENCES Veterinarios (idVeterinario)
	,DataConsulta  VARCHAR (100) NOT NULL 
	,Descricao       VARCHAR (100)  NOT NULL 
);