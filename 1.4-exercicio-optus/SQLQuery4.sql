CREATE DATABASE Plataformaoptus;

USE Plataformaoptus
CREATE TABLE Usuario 
(
	idUsuario       INT PRIMARY KEY IDENTITY
	,Nome           VARCHAR(200) NOT NULL
	,Email          VARCHAR(200) NOT NULL
	,Senha          INT NOT NULL
	,Tipodepermisao VARCHAR NOT NULL
);
CREATE TABLE Artista
(
	idArtista    INT PRIMARY KEY IDENTITY
	,funcionario INT NOT NULL
);

CREATE TABLE Album
(
	idAlbum             INT PRIMARY KEY IDENTITY
	,idArtista          INT FOREIGN KEY REFERENCES Artista(idArtista)
	,Titulo             VARCHAR(200) NOT NULL
	,Datadelancamento   INT NOT NULL 
	,Localizacao        VARCHAR(200)
	,Quntidadedeminuto  INT NOT NULL
	,Ativoounao         VARCHAR (200) NOT NULL
	,Compositor         VARCHAR (200) NOT NULL
	,Estilovinculado    VARCHAR (200) NOT NULL
);

CREATE TABLE Estilo 
(
	idEstilo INT PRIMARY KEY IDENTITY
	,Nome	VARCHAR(200) NOT NULL
);


CREATE TABLE AlbumEstilo
(
	idAlbum   INT PRIMARY KEY IDENTITY 
	,idEstilo INT FOREIGN KEY REFERENCES Estilo (idEstilo)
);

USE Plataformaoptus

