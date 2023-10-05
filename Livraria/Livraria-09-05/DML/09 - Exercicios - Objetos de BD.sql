/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
�ltima altera��o: 09/05/2023 - 20:00 - Brener Andrade
Descri��o: 
	Exercicios de:
	-> View
	-> Function
	-> Type
	-> Stored Procedure
--------------------------------------------*/


-- 01. Crie uma View que d� acesso aos produtos (Livros e HQs) 
--     com as seguintes informa��es (atributos): titulo, genero, editora, pre�o custo, pseudonimo do autor.
--     vwProdutos

-- 02. Crie uma Function que receba um codigo de produto por par�metro e retorne o pre�o de venda
--     (pre�o de custo mais 10%)
--     fnProdutoPre�oVenda

-- 03. Crie uma Function que receba o c�digo de um autor e retorne quantas obras (livros e HQs) ele possue cadastrado
--     fnQuantidadeObras

-- 04. Crie uma Stored Procedure que fa�a o reajuste do pre�o de custo em 5% somente nos Livros
--     stpReajusteLivros

-- 05. Crie uma Stored Procedure que insira uma Venda com tr�s Itens.
--     Todos os dados devem ser passados por par�metro para a SP
--     stpInsercaoVenda 

-- 06. Crie uma Stored Procedure que insira uma nova HQ que possui, al�m do autor, um desenhista e um colorista
--     (utilize um autor, um desenhista e um colorista j� cadastrado). Lembre tamb�m que cada produto possui duas imagens 
--     (uma capa e uma contracapa). Todos os dados devem ser passados por par�metro e o c�digo gerado para o novo produto
--     deve ser retornado por meio de um par�metro de sa�da.
--     stpInsercaoHq
