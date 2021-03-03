USE OPTUS;

--
SELECT Nome FROM Usuarios
WHERE Usuarios.Permissao = 'admin';

--------
SELECT Titulo FROM Albuns 
WHERE DataLancamento LIKE '%16'
---------
SELECT * FROM Usuarios
WHERE Email = 'mateus@gmail.com';
---------
SELECT Titulos FROM Albuns
WHERE Ativo = 'Sim';