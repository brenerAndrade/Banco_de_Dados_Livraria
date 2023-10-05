/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
Última alteração: 26/04/2023 - 22:40 - Brener Andrade
Descrição: 
	-> Testes de instruções em lote Transact SQL
	-> Tabela temporária com escopo global (visível para todas as sessões) ##
	-> Tabela temporária com escopo de sessão #
	-> Looping WHILE
	-> Variáveis do tipo tabela
	-> Tipo de Tabela Definido pelo Usuário
--------------------------------------------*/

-- Conexão com o Banco
USE Livraria
GO

-- Inserir um novo livro de um autor já cadastrado com duas imagens (capa e contracapa)

SELECT * FROM Produto
SELECT * FROM Livro
SELECT * FROM Imagem

-- Inserção em Produto
-- Recuperar o código gerado
-- Inserção em Livro
-- Inserção em Imagem


BEGIN

	DECLARE @CodigoProduto INT,
			@Titulo VARCHAR(100) = 'Ensaio sobre a cegueira',
			@Genero VARCHAR(50) = 'Literatura',
			@Editora VARCHAR(50) = 'Companhia das Letras',
			@Ano INT = 1995,
			@CapaDura BIT = 0,
			@Sinopse VARCHAR(MAX) = 'Um motorista parado no sinal se descobre subitamente cego. É o primeiro caso de uma ""treva branca"" que logo se espalha incontrolavelmente. Resguardados em quarentena, os cegos se perceberão reduzidos à essência humana, numa verdadeira viagem às trevas.',
			@PrecoCusto SMALLMONEY = 40.00,
			@Margem FLOAT = 0.1,
			@Edicao VARCHAR(5) = 2,
			@Digital BIT = 0,
			@CaminhoCapa VARCHAR(100) = '',
			@DescricaoCapa VARCHAR(25) = 'capa',
			@CaminhoContraCapa VARCHAR(100) = '',
			@DescricaoContraCapa VARCHAR(25) = 'contracapa'

	-- Inserção em Produto
	INSERT INTO Produto
	VALUES(@Titulo, @Genero, @Editora, @Ano, @CapaDura, @Sinopse, @PrecoCusto, @Margem)

	-- Recuperar o código gerado
	SELECT @CodigoProduto = MAX(codigo)
	FROM Produto

	-- Inserção em Livro
	INSERT INTO Livro
	VALUES(@CodigoProduto, @Edicao, @Digital)

	-- Inserção das imagens
	INSERT INTO Imagem
	VALUES(@CodigoProduto, CONCAT('\imagens\',@CodigoProduto,'a.jpg'), @DescricaoCapa),
	      (@CodigoProduto, CONCAT('\imagens\',@CodigoProduto,'b.jpg'), @DescricaoContraCapa)

	-- Verificação do resultado
	SELECT *
	FROM Produto AS P
	INNER JOIN Livro AS L ON P.codigo = L.codigoProduto
	INNER JOIN Imagem AS I ON L.codigoProduto = I.codigoProduto
	WHERE P.codigo = @CodigoProduto

END
GO



-- Insira uma Venda para a cliente "Ana Rocha Ferreira" com os seguintes itens: um "Admirável mundo novo", 
-- um "Laranja Mecânica: Edição Comemorativa de 50 anos" e dois "Pálido ponto azul"


-- Primeira versão (com redundancia)

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

	-- Inserção da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recuperação do código da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inserções de itens

	-- Obtém o código e o preço de UM produto
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'Admirável mundo novo' -- Valor fixo

	-- Inserção de UM item
	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 1, @Preco)


	-- Inserção do segundo item (instruções redundantes)
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'Laranja Mecânica: Edição Comemorativa de 50 anos' -- Valor fixo

	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 1, @Preco)


	-- Inserção do terceiro item (instruções redundantes)
	SELECT @CodigoProduto = codigo,
	       @Preco = precoCusto
	FROM Produto 
	WHERE titulo = 'Pálido ponto azul' -- Valor fixo

	INSERT INTO VendaItem
	VALUES(@CodigoVenda, @CodigoProduto, 2, @Preco)

	-- Verificação do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

END
GO


----------------------------------------------------------------
-- Inserção de Venda e VendaItem (com tabela temporária)


BEGIN
	-- Exclui a tabela temporária caso ela já exista
	DROP TABLE IF EXISTS #Itens

	-- Cria a tabela temporária
	CREATE TABLE #Itens(
		sequencia INT,
		codigoProduto INT,
		quantidade INT,
		preco SMALLMONEY
	)

	-- Declarações de variáveis
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

	-- tabela temporária populada com os itens a serem inseridos
	INSERT INTO #Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	-- Obtém a quantidade de itens
	SELECT @QuantidadeItens = COUNT(*) 
	FROM #Itens

	-- Inserção da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recuperação do código da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inserções de itens

	-- Looping
	WHILE(@Contador <= @QuantidadeItens) -- Enquanto a condição for verdadeira repete o bloco de instruções
		BEGIN
			-- Pega os dados de cada item
			SELECT @CodigoProduto = codigoProduto,
			       @Quantidade = quantidade,
				   @Preco = preco * quantidade
			FROM #Itens
			WHERE sequencia = @Contador

			-- Inserção na tabela permanente VendaItem
			INSERT INTO VendaItem
			VALUES(@CodigoVenda, @CodigoProduto, @Quantidade, @Preco)

			-- Incrementa o contador
			SET @Contador = @Contador + 1
		END

	-- Verificação do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

	-- Exclui a tabela temporária caso ela já exista
	DROP TABLE IF EXISTS #Itens
END
GO


----------------------------------------------------------------
-- Utilizando variável de tabela

BEGIN
	-- Declaração da variável de tabela
	DECLARE @Itens TABLE(
		sequencia INT,
		codigoProduto INT,
		quantidade INT,
		preco SMALLMONEY
	)

	-- Declarações de variáveis
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

	-- variável de tabela populada com os itens a serem inseridos
	INSERT INTO @Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	-- Obtém a quantidade de itens
	SELECT @QuantidadeItens = COUNT(*) 
	FROM @Itens

	-- Inserção da Venda
	INSERT INTO Venda
	VALUES(@CodigoCliente, @Nf, @Serie, @Emissao)

	-- Recuperação do código da venda
	SELECT @CodigoVenda = MAX(codigo)
	FROM Venda

	-- Inserções de itens

	WHILE(@Contador <= @QuantidadeItens)
		BEGIN
			-- Pega os dados de cada item
			SELECT @CodigoProduto = codigoProduto,
			       @Quantidade = quantidade,
				   @Preco = preco * quantidade
			FROM @Itens
			WHERE sequencia = @Contador

			-- Inserção na tabela permanente VendaItem
			INSERT INTO VendaItem
			VALUES(@CodigoVenda, @CodigoProduto, @Quantidade, @Preco)

			-- Incrementa o contador
			SET @Contador = @Contador + 1
		END

	-- Verificação do resultado
	SELECT *
	FROM Venda AS V
	INNER JOIN VendaItem AS Item ON V.codigo = Item.codigoVenda
	WHERE V.codigo = @CodigoVenda

END
GO


--------------------------------------------------------------------------------
-- Manipulação de um conjunto de dados temporariamente
-- -> Tabela temporária com escopo global (visível para todas as sessões) ##
-- -> Tabela temporária com escopo de sessão #
-- -> Variáveis do tipo tabela

-- -> Tipo de Tabela Definido pelo Usuário

--		Se uma determinada estrutura de tabela temporária é utilizada com frequencia
--		é possível definir essa estrutura como um novo tipo dentro do SQL Server 
--		e usa-lo para declarar variáveis de tabela

-- Criação do tipo
-- Fica armazenado na Estrutura do Banco > Programação > Tipos > Tipos de Tabela Definidos pelo Usuario
CREATE TYPE tpVendaItens AS TABLE(
	sequencia INT,
	codigoProduto INT,
	quantidade INT,
	preco SMALLMONEY
)
GO

BEGIN
	-- A declaração de uma variável pode ser feita 
	-- a partir de um tipo criado pelo usuario especificamente para o banco
	DECLARE @Itens AS tpVendaItens

	INSERT INTO @Itens
	VALUES(1, 2, 1, 39.00),
		  (2, 3, 1, 80.00),
		  (3, 9, 2, 45.00)

	SELECT * FROM @Itens
END
GO
