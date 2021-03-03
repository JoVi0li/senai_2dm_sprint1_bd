USE SENAI_HROADS_MANHA;

--TAREFA 6
SELECT * FROM Personagens;

--TAREFA 7
SELECT * FROM Classes;

--TAREFA 8
SELECT NomeClasse FROM Classes;

--TAREFA 9
SELECT * FROM Habilidades;

--TAREFA 10
SELECT COUNT(NomeHabilidade) FROM Habilidades;

--TAREFA 11
SELECT idHabilidade FROM Habilidades ORDER BY idHabilidade ASC;

--TAREFA 12
SELECT * FROM TipoHabilidade;

--TAREFA 13
SELECT NomeHabilidade AS Habilidade, NomeTipoHabilidade AS Tipo FROM Habilidades
INNER JOIN TipoHabilidade
ON TipoHabilidade.idTipoHabilidade = Habilidades.idTipoHabilidade;

--TAREFA 14
SELECT NomePersonagem AS Personagens, NomeClasse AS Classe FROM Personagens
INNER JOIN Classes
ON Classes.idClasse = Personagens.idClasse;

--TAREFA 15
SELECT NomeClasse, NomePersonagem FROM Classes
LEFT JOIN Personagens
ON Personagens.idClasse = Classes.idClasse;

--TAREFA 16
SELECT NomeClasse, NomeHabilidade FROM HabilidadeClasses
INNER JOIN Habilidades
ON Habilidades.idHabilidade = HabilidadeClasses.idHabilidade
RIGHT JOIN Classes
ON Classes.idClasse = HabilidadeClasses.idClasse;

--TAREFA 17
SELECT NomeHabilidade, NomeClasse FROM HabilidadeClasses
INNER JOIN Habilidades
ON Habilidades.idHabilidade = HabilidadeClasses.idHabilidade
INNER JOIN Classes
ON Classes.idClasse = HabilidadeClasses.idClasse;

--TAREFA 18
SELECT NomeHabilidade, NomeClasse FROM HabilidadeClasses
LEFT JOIN Habilidades
ON Habilidades.idHabilidade = HabilidadeClasses.idHabilidade
LEFT JOIN Classes
ON Classes.idClasse = HabilidadeClasses.idClasse;

