USE Empresa

INSERT INTO Empresa  (Razaõsocial)
VALUES               ('Localiza')
					,('Alugue car')
					,('ZN Veiculos')
					,('Só nave Veiculos')
					,('Vai que Vai Veiculos');
INSERT INTO Cliente (Nome,CPF)
VALUES               ('José tadeu dos santos','15425784512')
					,('Maria Aparecida B. santos','44411122278')
					,('Francisco carlos dos santos','11122233378')
					,('Maria jose dos santos','55544422217')
					,('Maria cidalia bezerra dos santos','25425855512');

INSERT INTO Marca  (Nome)
VALUES             ('Chevrole')
				  ,('Pejo')
				  ,('Toiota')
				  ,('Honda')
				  ,('Fiat');

INSERT INTO Modelo  (Nome,idMarca)
VALUES              ('Onix',1)
                   ,('Pejo 206',2)
				   ,('Corola',3)
				   ,('HRV',4)
				   ,('Palio',5);

INSERT INTO Veiculo (idEmpresa,idModelo,Placa)
VALUES				 (1,2,'0215')							
					,(2,2,'2548')						
					,(3,2,'2255')
					,(4,2,'0036')
					,(5,2,'0254');			   

INSERT INTO Aluguel  (idVeiculo,idCliente,Valor)
VALUES               (1,5,250)
					,(2,6,350)
					,(3,7,400)
					,(4,8,450)
					,(5,9,500);


					SELECT * FROM Cliente