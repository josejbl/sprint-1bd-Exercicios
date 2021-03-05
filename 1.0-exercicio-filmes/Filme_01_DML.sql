CREATE DATABASE Filmes;


--Define o banco de dados Filmes como  o que ser� utilizado
USE Filmes;
 
 CREATE TABLE Generos
 (
 --IDENTITY = Indentidade
	idGenero INT PRIMARY KEY IDENTITY 
	,Nome    VARCHAR(200) NOT NULL--N�O NULO
 );

 CREATE TABLE FilmeS
 (
	idfilme		INT PRIMARY KEY IDENTITY 
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(150) NOT NULL
 );