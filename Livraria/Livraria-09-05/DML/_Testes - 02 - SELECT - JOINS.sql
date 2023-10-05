/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
Última alteração: 10/04/2023 - 20:45 - Brener Andrade
Descrição: 
	-> Testes de consultas (Script de DML)
	-> Variações de junções
		-> INNER JOIN
		-> LEFT INCLUSIVE JOIN
		-> LEFT EXCLUSIVE JOIN
		-> RIGHT INCLUSIVE JOIN
		-> RIGHT EXCLUSIVE JOIN
		-> FULL INCLUSIVE
		-> FULL EXCLUSIVE
--------------------------------------------*/

-- Conexão com o Banco
USE Livraria
GO

SELECT * FROM Produto
SELECT * FROM Imagem
SELECT * FROM Livro
SELECT * FROM HQ
SELECT * FROM Desenhista
SELECT * FROM Colorista
SELECT * FROM AutorProduto
SELECT * FROM Autor
SELECT * FROM Venda
SELECT * FROM VendaItem
SELECT * FROM Cliente
SELECT * FROM EntregaVenda
SELECT * FROM Entrega



-- Os livros e seus autores
SELECT P.titulo,
       P.genero,
	   L.edicao,
	   A.pseudonimo
FROM Produto AS P
INNER JOIN Livro AS L ON P.codigo = L.codigoProduto
INNER JOIN AutorProduto AS AP ON P.codigo = AP.codigoProduto
INNER JOIN Autor AS A ON AP.codigoAutor = A.codigo


-- RIGHT INCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   L.edicao,
	   A.pseudonimo
FROM Produto AS P
INNER JOIN Livro AS L ON P.codigo = L.codigoProduto
INNER JOIN AutorProduto AS AP ON P.codigo = AP.codigoProduto
RIGHT JOIN Autor AS A ON AP.codigoAutor = A.codigo


-- RIGHT EXCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   L.edicao,
	   A.pseudonimo
FROM Produto AS P
INNER JOIN Livro AS L ON P.codigo = L.codigoProduto
INNER JOIN AutorProduto AS AP ON P.codigo = AP.codigoProduto
RIGHT JOIN Autor AS A ON AP.codigoAutor = A.codigo
WHERE AP.codigoAutor IS NULL



-- Principais variações de JOIN

-- INNER JOIN
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
INNER JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo


-- LEFT INCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
LEFT JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo


-- LEFT EXCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
LEFT JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo
WHERE D.codigo IS NULL


-- RIGHT INCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
RIGHT JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo


-- RIGHT EXCLUSIVE JOIN
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
RIGHT JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo
WHERE HQ.codigoDesenhista IS NULL


-- FULL INCLUSIVE
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
FULL JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo


-- FULL EXCLUSIVE
SELECT P.titulo,
       P.genero,
	   D.nome
FROM Produto AS P
INNER JOIN HQ ON P.codigo = HQ.codigoProduto
FULL JOIN Desenhista AS D ON HQ.codigoDesenhista = D.codigo
WHERE HQ.codigoDesenhista IS NULL OR D.codigo IS NULL

