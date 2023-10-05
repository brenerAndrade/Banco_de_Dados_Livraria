/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
Última alteração: 10/04/2023 - 20:45 - Brener Andrade
Descrição: Testes de consultas (Script de DML)
--------------------------------------------*/

-- Conexão com o Banco
USE Livraria
GO

-- 01. Consulte as vendas realizadas no dia 10/04/2023 apresentando a serie, o número da nf, data emissão,
--     o titulo do produto, a quantidade, preço unitário (precoItem) e valor total por produto.

	-- 01a. Acrescente na consulta anterior o valor total de cada venda.


-- 02. Consulte as vendas realizadas dia 12/04/2023 apresentando as notas emitidas no dia (serie e nf) e o valor total de cada nota.

	SELECT V.serie,
		   V.nf,
		   SUM(Item.quantidade * Item.precoItem)
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.emissao = '12/04/2023'
	GROUP BY V.serie, V.nf

	-- 02a. Acrescente na consulta anterior um filtro para apresentar somente as notas acima de R$ 250,00.

	SELECT V.serie,
		   V.nf,
		   SUM(Item.quantidade * Item.precoItem)
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.emissao = '12/04/2023'
	GROUP BY V.serie, V.nf
	HAVING SUM(Item.quantidade * Item.precoItem) > 250


-- 03. Consulte os clientes que compraram HQs e quais titulos foram comprados.

	-- Quais produtos são HQs
	SELECT HQ.codigoProduto
	FROM Produto AS P
	INNER JOIN HQ ON P.codigo = HQ.codigoProduto

	
	-- Consulta somente as HQs
	SELECT Cli.nome,
	       P.titulo
	FROM Cliente AS Cli
	INNER JOIN Venda AS V ON Cli.codigo = V.codigoCliente
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	INNER JOIN Produto AS P ON Item.codigoProduto = P.codigo
	WHERE Item.codigoProduto IN (SELECT HQ.codigoProduto
								 FROM Produto AS P
								 INNER JOIN HQ ON P.codigo = HQ.codigoProduto)
	ORDER BY Cli.nome, P.titulo



	-- Desafio: Consulte a venda (serie e nf) mais cara realizada no dia com mais vendas do mês de abril.

	-- Dia com mais vendas do mês de abril
	SELECT TOP(1) V.emissao
	FROM Venda AS V
	WHERE MONTH(V.emissao) = 4
	GROUP BY V.emissao
	ORDER BY COUNT(*) DESC

	-- Venda (serie e nf) mais cara realizada
	SELECT V.serie,
	       V.nf,
	       SUM( (Item.precoItem * Item.quantidade) )
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	GROUP BY V.serie, V.nf
	ORDER BY SUM( (Item.precoItem * Item.quantidade) ) DESC

	-- Vendas do dia
	SELECT V.serie,
	       V.nf,
	       SUM( (Item.precoItem * Item.quantidade) ),
		   V.emissao
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.emissao = (	SELECT TOP(1) V.emissao
						FROM Venda AS V
						WHERE MONTH(V.emissao) = 4
						GROUP BY V.emissao
						ORDER BY COUNT(*) DESC )
	GROUP BY V.serie, V.nf, V.emissao
	ORDER BY SUM( (Item.precoItem * Item.quantidade) ) DESC



	-- A venda de maior valor do dia com mais vendas
	SELECT TOP(1) V.serie,
	              V.nf,
	              SUM( (Item.precoItem * Item.quantidade) ),
		          V.emissao
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.emissao = (	SELECT TOP(1) V.emissao
						FROM Venda AS V
						WHERE MONTH(V.emissao) = 4
						GROUP BY V.emissao
						ORDER BY COUNT(*) DESC )
	GROUP BY V.serie, V.nf, V.emissao
	ORDER BY SUM( (Item.precoItem * Item.quantidade) ) DESC