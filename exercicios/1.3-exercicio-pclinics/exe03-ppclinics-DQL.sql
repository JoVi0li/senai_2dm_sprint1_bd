USE ClinicaPet;

SELECT Clinicas.RazaoSocial,Nome,CRMV FROM Veterinarios
INNER JOIN Clinicas
ON Clinicas.idClinica = Veterinarios.idClinica;

-----------------------------------------
SELECT Descricao FROM Racas
WHERE Descricao LIKE 'S%'
------------------------------------------
SELECT Descricao FROM TiposPets
WHERE Descricao LIKE'%O'
-----------------------------------------

SELECT Racas.Descricao, NomePet, Donos.Nome AS NomeDono FROM Pets
INNER JOIN Donos
ON Donos.idDono = Pets.idDono
INNER JOIN Racas
ON Racas.idRaca = Pets.idRaca;

-----------------------------------------

SELECT Diagnostico, Veterinarios.Nome AS Veterinário, Pets.NomePet ,Racas.Descricao, TiposPets.Descricao AS Tipo,Donos.Nome AS NomeDono, Clinicas.RazaoSocial AS [Clínica] FROM Atendimentos
INNER JOIN Pets
ON Pets.idPet = Atendimentos.idPet
INNER JOIN Racas
ON Racas.idRaca = Pets.idRaca
INNER JOIN Veterinarios
ON Veterinarios.IdVeterinario = Atendimentos.idVeterinario
INNER JOIN TiposPets
ON TiposPets.idTipo = Racas.idTipo
INNER JOIN Donos
ON Donos.idDono = Pets.idDono
INNER JOIN Clinicas
ON Clinicas.IdClinica = Veterinarios.IdClinica;