USE OPTUS;

INSERT INTO Albuns(idArtista, Titulo,DataLancamento,Localizacao,QtdMinutos,Ativo)
VALUES	(1,'Castelos & Ruínas','26/03/2016','Rio de Janeiro',42,'Sim')
		,(2,'Flower Boy','21/07/2017','USA',46,'Sim');

INSERT INTO Artistas(Nome)
VALUES	('BK')
		,('Tyler The Creator');

INSERT INTO Estilo(Nome)
VALUES	('Rap')
		,('HipHop');

INSERT INTO Usuarios(Nome,Email,Senha,Permissao)
VALUES	('Mateus','mateus@gmail.com','12345','admin')
		,('Leonardo','leocosta@gmail.com','654321','usuario');

INSERT INTO AlbunsEstilo(idAlbum,idEstilo)
VALUES	(1,1)
		,(2,2);