CREATE DATABASE optus;

USE optus;

CREATE TABLE Artistas
(
	idArtista	TINYINT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(100) NOT NULL
);

CREATE TABLE Estilos
(
	idEstilo	TINYINT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(100) NOT NULL
);

CREATE TABLE AlbunsEstilos
(
	idAlbum		TINYINT FOREIGN KEY REFERENCES Albuns (idAlbum)
	,idEstilo	TINYINT	FOREIGN KEY REFERENCES Estilos (idEstilo)
);

CREATE TABLE Albuns
(
	idAlbum				TINYINT PRIMARY KEY IDENTITY
	,idArtista			TINYINT FOREIGN KEY REFERENCES Artistas	(idArtista)
	,Titulo				VARCHAR(100) NOT NULL
	,DataLancamento		Date NOT NULL
	,Localizacao		VARCHAR(100) NOT NULL
	,QtdMinutos			VARCHAR(100) NOT NULL
	,Ativo				VARCHAR(100) NOT NULL
);

CREATE TABLE Usuarios
(
	idUsuario	TINYINT PRIMARY KEY IDENTITY
	,Nome		VARCHAR(100) NOT NULL
	,Email		VARCHAR(100) NOT NULL
	,Senha		VARCHAR(100) NOT NULL
	,Permissao	VARCHAR(100) NOT NULL
);