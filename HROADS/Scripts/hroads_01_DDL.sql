CREATE DATABASE SENAI_HROADS_MANHA; 

USE SENAI_HROADS_MANHA;

CREATE TABLE TipoHabilidade
(
	idTipoHabilidade INT PRIMARY KEY IDENTITY
	,NomeTipoHabilidade VARCHAR(10) NOT NULL 
);

CREATE TABLE Habilidades
(
	idHabilidade INT PRIMARY KEY IDENTITY
	,idTipoHabilidade INT FOREIGN KEY REFERENCES TipoHabilidade(idTipoHabilidade)
	,NomeHabilidade VARCHAR(200) NOT NULL 
);

CREATE TABLE Classes
(
	idClasse INT PRIMARY KEY IDENTITY
	,idHabilidade INT FOREIGN KEY REFERENCES Habilidades(idHabilidade)
	,NomeClasse VARCHAR(200) NOT NULL 
);

CREATE TABLE HabilidadeClasses
(
	idClasse INT FOREIGN KEY REFERENCES Classes(idClasse)
	,idHabilidade INT FOREIGN KEY REFERENCES Habilidades(idHabilidade)
);

CREATE TABLE Personagens
(
	idPersonagem INT PRIMARY KEY IDENTITY
	,idClasse INT FOREIGN KEY REFERENCES Classes(idClasse)
	,NomePersonagem VARCHAR(200) NOT NULL
);
