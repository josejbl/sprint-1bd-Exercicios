CREATE DATABASE Filmes;


--Define o banco de dados Filmes como  o que será utilizado
USE Filmes;
 
 CREATE TABLE Generos
 (
 --IDENTITY = Indentidade
	idGenero INT PRIMARY KEY IDENTITY 
	,Nome    VARCHAR(200) NOT NULL--NÃO NULO
 );

 CREATE TABLE FilmeS
 (
	idfilme		INT PRIMARY KEY IDENTITY 
	,idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero)
	,Titulo		VARCHAR(150) NOT NULL
 );