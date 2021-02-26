CREATE DATABASE Clinica;

USE Clinica

CREATE TABLE Clinica
(
	idClinica INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL 
);

CREATE TABLE Veterinario
(
	idVeterinario  INT PRIMARY KEY IDENTITY 
	,idClinica     INT FOREIGN KEY REFERENCES Clinica (idClinica)
	,Medico        VARCHAR (100) NOT NULL
);

CREATE TABLE Dono 
(
	idDono       INT PRIMARY KEY IDENTITY
	,Proprietario VARCHAR(100) NOT NULL   
);

CREATE TABLE Tipo
(
	idTipo       INT PRIMARY KEY IDENTITY 
	,Tipo        VARCHAR(100) NOT NULL
);

CREATE TABLE Raca 
(
	idRaca       INT PRIMARY KEY IDENTITY 
	,idTipo      INT FOREIGN KEY REFERENCES Tipo (idTipo)
	,Tipo        INT NOT NULL
);

CREATE TABLE Pacientepet
(
	idPacientepet INT PRIMARY KEY IDENTITY 
	,idRaca       INT FOREIGN KEY REFERENCES Raca (idRaca)
	,idDono       INT FOREIGN KEY REFERENCES Dono (idDono)
	,Paciente     INT NOT NULL 
);

CREATE TABLE Consulta 
(
	idConsulta     INT PRIMARY KEY IDENTITY
	,idPacientepet INT FOREIGN KEY REFERENCES Pacientepet (idPacientepet)
	,idVetrinario  INT FOREIGN KEY REFERENCES Veterinario (idVeterinario)
	,Dia           INT NOT NULL 
);