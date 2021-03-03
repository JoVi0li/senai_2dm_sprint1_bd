USE Locadora;
INSERT INTO Marca(Nome)
VALUES			 ('Honda')
				,('Toyota')
				,('Ford');

INSERT INTO Cliente(Nome,CPF)
VALUES			   ('Mateus Rodrigues',77777777777)
				  ,('Leonardo Costa', 99999999999)
				  ,('Miguel Melo',33333333333);

INSERT INTO Empresas(Nome)
VALUES			   ('Movida');

INSERT INTO Modelo(NomeDoModelo,idMarca)
VALUES			  ('Civic', 1)
				 ,('Corolla', 2)
				 ,('Fusion',3);

INSERT INTO Veiculos(idEmpresa,idModelo,Placa)
VALUES			  (1,2,'aaa555')
				 ,(1,3,'ttt7898')
				 ,(1,1,'ggg5444');

INSERT INTO Alugueis(idCliente,idVeiculo,DataInicio,DataFim)
VALUES			    (2,1,'22/02/2021','01/03/2021')
				   ,(1,2,'01/04/2021','05/04/2021')
				   ,(1,3,'04/12/2021','07/01/2022')
				   ,(3,3,'01/05/2021','07/05/2021');
