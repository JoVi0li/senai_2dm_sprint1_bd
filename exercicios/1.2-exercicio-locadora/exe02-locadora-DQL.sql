USE Locadora;

SELECT * FROM Cliente;
SELECT * FROM Empresas;
SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Veiculos;
SELECT * FROM Alugueis;

SELECT DataInicio,DataFim, Nome AS Cliente,Modelo.NomeDoModelo FROM Alugueis
INNER JOIN Cliente
ON Alugueis.idCliente = Cliente.idCliente
INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo
INNER JOIN Modelo
ON Veiculos.idModelo = Modelo.idModelo;


SELECT Nome AS Cliente,DataInicio,DataFim, Modelo.NomeDoModelo FROM Alugueis
INNER JOIN Cliente
ON Alugueis.idCliente = Cliente.idCliente
INNER JOIN Veiculos
ON Veiculos.idVeiculo = Alugueis.idVeiculo
INNER JOIN Modelo
ON Veiculos.idModelo = Modelo.idModelo
WHERE Cliente.idCliente = 1;

