/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
�ltima altera��o: 26/04/2023 - 22:40 - Brener Andrade
Descri��o: 
	-> Testes de instru��es em lote Transact SQL
	-> Tabela tempor�ria com escopo global (vis�vel para todas as sess�es) ##
	-> Tabela tempor�ria com escopo de sess�o #
	-> Looping WHILE
	-> Vari�veis do tipo tabela
	-> Tipo de Tabela Definido pelo Usu�rio
--------------------------------------------*/

-- Conex�o com o Banco
USE Livraria
GO

-- Inserir um novo livro de um autor j� cadastrado com duas imagens (capa e contracapa)

SELECT * FROM Produto
SELECT * FROM Livro
SELECT * FROM Imagem

-- Inser��o em Produto
-- Recuperar o c�digo gerado
-- Inser��o em Livro
-- Inser��o em Imagem


BEGIN

	DECLARE @CodigoProduto INT,
			@Titulo VARCHAR(100) = 'Ensaio sobre a cegueira',
			@Genero VARCHAR(50) = 'Literatura',
			@Editora VARCHAR(50) = 'Companhia das Letras',
			@Ano INT = 1995,
			@CapaDura BIT = 0,
			@Sinopse VARCHAR(MAX) = 'Um motorista parado no sinal se descobre subitamente cego. � o primeiro caso de uma ""treva branca"" que logo se espalha incontrolavelmente. Resguardados em quarentena, os cegos se perceber�o reduzidos � ess�ncia humana, numa verdadeira viagem �s trevas.',
			@PrecoCusto SMALLMONEY = 40.00,
			@Margem FLOAT = 0.1,
			@Edicao VARCHAR(5) = 2,
			@Digital BIT = 0,
			@CaminhoCapa VARCHAR(100) = '',
			@DescricaoCapa VARCHAR(25) = 'capa',
			@CaminhoContraCapa VARCHAR(100) = '',
			@DescricaoContraCapa VARCHAR(25) = 'contracapa'

	-- Inser��o em Produto
	INSERT INTO Produto
	VALUES(@Titulo, @Genero, @Editora, @Ano, @CapaDura, @Sinopse, @PrecoCusto, @Margem)

	-- Recuperar o c�digo gerado
	SELECT @CodigoProduto = MAX(codigo)
	FROM Produto

	-- Inser��o em Livro
	INSERT INTO Livro
	VALUES(@CodigoProduto, @Edicao, @Digital)

	-- Inser��o das imagens
	INSERT INTO Imagem
	VALUES(@CodigoProduto, CONCAT('\imagens\',@CodigoProduto,'a.jpg'), @DescricaoCapa),
	      (@CodigoProduto, CONCAT('\imagens\',@CodigoProduto,'b.jpg'), @DescricaoContraCapa)

	-- Verifica��o do resultado
	SELECT *
	FROM Produto AS P
	INNER JOIN Livro AS L ON P.codigo = L.codigoProduto
	INNER JOIN Imagem AS I ON L.codigoProduto = I.codigoProduto
	WHERE P.codigo = @CodigoProduto

END
GO



-- Insira uma Venda para a cliente "Ana Rocha Ferreira" com os seguintes itens: um "Admir�vel mundo novo", 
-- um "Laranja Mec�nica: Edi��o Comemorativa de 50 anos" e dois "P�lido ponto azul"


-- Primeira vers�o (com redundancia)

SELECT * FROM Venda
SELECT * FROM VendaItem

BEGIN

	DECLARE @CodigoCliente INT = (SELECT codigo FROM Cliente WHERE nome = 'Ana Rocha Ferreira'),
			@Nf INT = (SELECT MAX(nf) FROM Venda) + 1,
			@Serie VARCHAR(5) = (SELECT MAX(serie) FROM Venda),
			@Emissao DATE = GETDATE(),
			@CodigoVenda INT,
			@CodigoProduto INT,
			@Preco SMALLMONEY

	-- Inser��o da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recupera��o do c�digo da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inser��es de itens

	-- Obt�m o c�digo e o pre�o de UM produto
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'Admir�vel mundo novo' -- Valor fixo

	-- Inser��o de UM item
	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 1, @Preco)


	-- Inser��o do segundo item (instru��es redundantes)
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'Laranja Mec�nica: Edi��o Comemorativa de 50 anos' -- Valor fixo

	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 1, @Preco)


	-- Inser��o do terceiro item (instru��es redundantes)
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'P�lido ponto azul' -- Valor fixo

	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 2, @Preco)

	-- Verifica��o do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

END
GO


----------------------------------------------------------------
-- Inser��o de Venda e VendaItem (com tabela tempor�ria)


BEGIN
	-- Exclui a tabela tempor�ria caso ela j� exista
	DROP TABLE IF EXISTS #Itens

	-- Cria a tabela tempor�ria
	CREATE TABLE #Itens(
		sequencia INT,
		codigoProduto INT,
		quantidade INT,
		preco SMALLMONEY
	)

	-- Declara��es de vari�veis
	DECLARE @CodigoCliente INT = (SELECT codigo FROM Cliente WHERE nome = 'Ana Rocha Ferreira'),
			@Nf INT = (SELECT MAX(nf) FROM Venda) + 1,
			@Serie VARCHAR(5) = (SELECT MAX(serie) FROM Venda),
			@Emissao DATE = GETDATE(),
			@CodigoVenda INT,
			@CodigoProduto INT, 
			@Quantidade INT, 
			@Preco SMALLMONEY,
			@QuantidadeItens INT,
			@Contador INT = 1

	-- tabela tempor�ria populada com os itens a serem inseridos
	INSERT INTO #Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	-- Obt�m a quantidade de itens
	SELECT @QuantidadeItens = COUNT(*) 
	FROM #Itens

	-- Inser��o da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recupera��o do c�digo da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inser��es de itens

	-- Looping
	WHILE(@Contador <= @QuantidadeItens) -- Enquanto a condi��o for verdadeira repete o bloco de instru��es
		BEGIN
			-- Pega os dados de cada item
			SELECT @CodigoProduto = codigoProduto,
			       @Quantidade = quantidade,
				   @Preco = preco * quantidade
			FROM #Itens
			WHERE sequencia = @Contador

			-- Inser��o na tabela permanente VendaItem
			INSERT INTO VendaItem
			VALUES(@CodigoVenda, @CodigoProduto, @Quantidade, @Preco)

			-- Incrementa o contador
			SET @Contador = @Contador + 1
		END

	-- Verifica��o do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

	-- Exclui a tabela tempor�ria caso ela j� exista
	DROP TABLE IF EXISTS #Itens
END
GO


----------------------------------------------------------------
-- Utilizando vari�vel de tabela

BEGIN
	-- Declara��o da vari�vel de tabela
	DECLARE @Itens TABLE(
		sequencia INT,
		codigoProduto INT,
		quantidade INT,
		preco SMALLMONEY
	)

	-- Declara��es de vari�veis
	DECLARE @CodigoCliente INT = (SELECT codigo FROM Cliente WHERE nome = 'Ana Rocha Ferreira'),
			@Nf INT = (SELECT MAX(nf) FROM Venda) + 1,
			@Serie VARCHAR(5) = (SELECT MAX(serie) FROM Venda),
			@Emissao DATE = GETDATE(),
			@CodigoVenda INT,
			@CodigoProduto INT, 
			@Quantidade INT, 
			@Preco SMALLMONEY,
			@QuantidadeItens INT,
			@Contador INT = 1

	-- vari�vel de tabela populada com os itens a serem inseridos
	INSERT INTO @Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	-- Obt�m a quantidade de itens
	SELECT @QuantidadeItens = COUNT(*) 
	FROM @Itens

	-- Inser��o da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recupera��o do c�digo da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inser��es de itens

	WHILE(@Contador <= @QuantidadeItens)
		BEGIN
			-- Pega os dados de cada item
			SELECT @CodigoProduto = codigoProduto,
			       @Quantidade = quantidade,
				   @Preco = preco * quantidade
			FROM @Itens
			WHERE sequencia = @Contador

			-- Inser��o na tabela permanente VendaItem
			INSERT INTO VendaItem
			VALUES(@CodigoVenda, @CodigoProduto, @Quantidade, @Preco)

			-- Incrementa o contador
			SET @Contador = @Contador + 1
		END

	-- Verifica��o do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

END
GO


--------------------------------------------------------------------------------
-- Manipula��o de um conjunto de dados temporariamente
-- -> Tabela tempor�ria com escopo global (vis�vel para todas as sess�es) ##
-- -> Tabela tempor�ria com escopo de sess�o #
-- -> Vari�veis do tipo tabela

-- -> Tipo de Tabela Definido pelo Usu�rio

--		Se uma determinada estrutura de tabela tempor�ria � utilizada com frequencia
--		� poss�vel definir essa estrutura como um novo tipo dentro do SQL Server 
--		e usa-lo para declarar vari�veis de tabela

-- Cria��o do tipo
-- Fica armazenado na Estrutura do Banco > Programa��o > Tipos > Tipos de Tabela Definidos pelo Usuario
CREATE TYPE tpVendaItens AS TABLE(
	sequencia INT,
	codigoProduto INT,
	quantidade INT,
	preco SMALLMONEY
)
GO

BEGIN
	-- A declara��o de uma vari�vel pode ser feita 
	-- a partir de um tipo criado pelo usuario especificamente para o banco
	DECLARE @Itens AS tpVendaItens

	INSERT INTO @Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	SELECT * FROM @Itens
END
GO
