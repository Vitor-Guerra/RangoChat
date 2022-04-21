USE MASTER;
GO

DROP DATABASE RangoChat;
GO

USE RangoChat;
GO

SELECT * FROM Cliente;
GO

INSERT INTO Cliente (nome, email, senha, telefone, endereco, cpf)
	VALUES ('Vitor Guerra Bueno', 'vitorg_bueno@hotmail.com', '123', '11941339874', 'Rua General Goes Monteiro, 29, Jardim Eliza, Francisco Morato, SP', '45917081875');


SELECT * FROM Responsavel;
GO

INSERT INTO Responsavel (nome, email, telefone, endereco, cpf)
	VALUES ('Mariana Urbanovick Guerra', 'mariana.urbanovick@hotmail.com', '11940148637', 'Rua General Goes Monteiro, 29, Jardim Eliza, Francisco Morato, SP', '46633566808');


SELECT * FROM Restaurante;
GO

INSERT INTO Restaurante (nome, email, senha, telefone, endereco, cnpj, status, idResponsavel)
	VALUES ('Bom de Boca', 'adm@bomdeboca.com', '123', '11940054000', 'Rua da paz, 129, Jardim Honduras, Francisco Morato, SP', '4098128000123', 0, 1);


SELECT * FROM Mensagem;
GO

INSERT INTO Mensagem (origem, destino, conteudo, data, hora)
	VALUES (1, 1, 'Boa noite. Vocês fazem porção de tilápia ou calabresa com fritas? Poderia me mandar o cardápio? Obrigado', '2022-04-16', '10:26:21');
