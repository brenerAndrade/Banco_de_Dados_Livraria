/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
�ltima altera��o: 26/04/2023 - 22:40 - Brener Andrade
Descri��o: 
	-> Exercicios de tabelas tempor�rias
	-> UNION
	-> Inser��es a partir de um SELECT
--------------------------------------------*/

-- Conex�o com o Banco
USE Livraria
GO

-- Script: 08 - Exercicios - Tabela temporaria.sql

-- Crie um script que simule o reajuste do pre�os de custo dos livros em 5% e das HQs em 7% 
-- e o valor total do estoque antes e depois do reajuste apresentando dois SELECTs:

-- Primeiro SELECT
-- Os titulos dos livros
-- os valores dos livros antes do reajuste 
-- os valores dos livros depois do reajuste
-- Os titulos das HQs
-- os valores das HQs antes do reajuste
-- os valores das HQs depois do reajuste

-- Segundo SELECT
-- o valor do estoque de livros antes do reajuste 
-- o valor do estoque de livros depois do reajuste
-- o valor do estoque de HQs antes do reajuste
-- o valor do estoque de HQs depois do reajuste
-- o valor do estoque de total antes do reajuste
-- o valor do estoque de total depois do reajuste
-- a diferen�a em reais no valor do estoque total

-- Obs.: Realize a manipula��o dos dados em uma tabela tempor�ria com escopo de sess�o

BEGIN
	DROP TABLE IF EXISTS #Livros
	DROP TABLE IF EXISTS #HQs

	DECLARE @TotalLivros SMALLMONEY,
	        @TotalLivrosReajustado SMALLMONEY,
	        @TotalHq SMALLMONEY,
			@TotalHqReajustado SMALLMONEY,
			@TotalEstoque SMALLMONEY,
			@TotalEstoqueReajustado SMALLMONEY,
			@TotalReajuste SMALLMONEY

	-- Livros (titulo e pre�o de custo)
	SELECT 'Livros' AS 'Tipo',
	       P.titulo AS 'Titulo',
	       P.precoCusto AS 'Pre�o atual',
		   (P.precoCusto * 1.05) AS 'Pre�o reajustado'
	INTO #Livros
	FROM Produto AS P
	INNER JOIN Livro ON P.codigo = Livro.codigoProduto

	-- Verificar resultado
	-- SELECT * FROM #Livros

	-- HQs (titulo e pre�o de custo)
	SELECT 'HQs' AS 'Tipo',
	       P.titulo AS 'Titulo',
	       P.precoCusto AS 'Pre�o atual',
		   (P.precoCusto * 1.07) AS 'Pre�o reajustado'
	INTO #HQs
	FROM Produto AS P
	INNER JOIN HQ ON P.codigo = HQ.codigoProduto

	-- Verificar resultado
	-- SELECT * FROM #HQs


	-- Totais

	-- o valor do estoque de livros antes do reajuste
	SELECT @TotalLivros = SUM([Pre�o atual]) 
	FROM #Livros

	-- o valor do estoque de livros depois do reajuste
	SELECT @TotalLivrosReajustado = SUM([Pre�o reajustado]) 
	FROM #Livros

	-- o valor do estoque de HQs antes do reajuste
	SELECT @TotalHq = SUM([Pre�o atual]) 
	FROM #HQs

	-- o valor do estoque de HQs depois do reajuste
	SELECT @TotalHqReajustado = SUM([Pre�o reajustado]) 
	FROM #HQs

	-- o valor do estoque de total antes do reajuste
	SET @TotalEstoque = @TotalLivros + @TotalHq

	-- o valor do estoque de total depois do reajuste
	SET @TotalEstoqueReajustado = @TotalLivrosReajustado + @TotalHqReajustado

	-- a diferen�a em reais no valor do estoque total
	SET @TotalReajuste = @TotalEstoqueReajustado - @TotalEstoque


	-- Apresenta os titulos e valores (atuais e reajustados) de todos os produtos

	-- Exemplo 01: Os titulos e valores dos livros antes e depois do reajuste
	/*
	SELECT #Livros.Tipo,
	       #Livros.Titulo AS 'Produto',
	       #Livros.[Pre�o atual],
		   #Livros.[Pre�o reajustado]
	FROM #Livros

	SELECT #HQs.Tipo,
	       #HQs.Titulo AS 'Produto',
	       #HQs.[Pre�o atual],
		   #HQs.[Pre�o reajustado]
	FROM #HQs
	*/

	-- Exemplo 02: Os titulos e valores dos livros antes e depois do reajuste
	/*
	SELECT #Livros.Tipo,
	       #Livros.Titulo AS 'Produto',
	       #Livros.[Pre�o atual],
		   #Livros.[Pre�o reajustado]
	FROM #Livros
	UNION
	SELECT #HQs.Tipo,
	       #HQs.Titulo AS 'Produto',
	       #HQs.[Pre�o atual],
		   #HQs.[Pre�o reajustado]
	FROM #HQs
	*/

	-- Exemplo 03: Os titulos e valores dos livros antes e depois do reajuste
	
	INSERT INTO #Livros
	SELECT #HQs.Tipo,
	       #HQs.Titulo,
	       #HQs.[Pre�o atual],
		   #HQs.[Pre�o reajustado] 
	FROM #HQs

	SELECT Tipo,
	       Titulo,
		   FORMAT([Pre�o atual], 'C', 'pt-br') AS [Pre�o atual],
		   FORMAT([Pre�o reajustado], 'C', 'pt-br') AS [Pre�o reajustado]
	FROM #Livros
	ORDER BY Tipo, Titulo
	

	-- Apresenta os totais

	SELECT FORMAT(@TotalLivros, 'C', 'pt-br') AS 'Total Livros Atual',
	       FORMAT(@TotalLivrosReajustado, 'C', 'pt-br') AS 'Total Livros Reajustado',
		   FORMAT(@TotalHq, 'C', 'pt-br') AS 'Total HQs Atual',
		   FORMAT(@TotalHqReajustado, 'C', 'pt-br') AS 'Total HQs Reajustado',
		   FORMAT(@TotalEstoque, 'C', 'pt-br') AS 'Total Estoque Atual',
		   FORMAT(@TotalEstoqueReajustado, 'C', 'pt-br') AS 'Total Estoque Reajustado',
		   FORMAT(@TotalReajuste, 'C', 'pt-br') AS 'Total de Reajuste no Estoque'

END
GO






