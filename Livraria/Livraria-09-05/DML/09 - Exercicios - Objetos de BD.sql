/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
Última alteração: 09/05/2023 - 20:00 - Brener Andrade
Descrição: 
	Exercicios de:
	-> View
	-> Function
	-> Type
	-> Stored Procedure
--------------------------------------------*/


-- 01. Crie uma View que dê acesso aos produtos (Livros e HQs) 
--     com as seguintes informações (atributos): titulo, genero, editora, preço custo, pseudonimo do autor.
--     vwProdutos

-- 02. Crie uma Function que receba um codigo de produto por parâmetro e retorne o preço de venda
--     (preço de custo mais 10%)
--     fnProdutoPreçoVenda

-- 03. Crie uma Function que receba o código de um autor e retorne quantas obras (livros e HQs) ele possue cadastrado
--     fnQuantidadeObras

-- 04. Crie uma Stored Procedure que faça o reajuste do preço de custo em 5% somente nos Livros
--     stpReajusteLivros

-- 05. Crie uma Stored Procedure que insira uma Venda com três Itens.
--     Todos os dados devem ser passados por parâmetro para a SP
--     stpInsercaoVenda 

-- 06. Crie uma Stored Procedure que insira uma nova HQ que possui, além do autor, um desenhista e um colorista
--     (utilize um autor, um desenhista e um colorista já cadastrado). Lembre também que cada produto possui duas imagens 
--     (uma capa e uma contracapa). Todos os dados devem ser passados por parâmetro e o código gerado para o novo produto
--     deve ser retornado por meio de um parâmetro de saída.
--     stpInsercaoHq
