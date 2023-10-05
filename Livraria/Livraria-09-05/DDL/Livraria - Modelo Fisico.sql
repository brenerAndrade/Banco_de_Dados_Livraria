/*-------------------------------------------
Banco: Livraria
Autor: Ralfe(Professor do Curso de DBA na Escola Senai Roberto Mange)
Última alteração: 07/04/2023 - 18:00 - Brener Andrade(Aluno do Curso)
Descrição: Modelo Conceitual (Script de DDL)
--------------------------------------------*/

-- Criação do Banco
CREATE DATABASE Livraria
GO

-- Conexão com o Banco
USE Livraria
GO

-- Tabelas que não possuem chave estrangeira

CREATE TABLE Cliente(
	codigo INT IDENTITY,	
	nome VARCHAR(50) NOT NULL,
	cpf VARCHAR(12) NOT NULL,
	logradouro VARCHAR(75) NOT NULL,
	bairro VARCHAR(75) NOT NULL,
	cidade VARCHAR(75) NOT NULL,
	uf CHAR(2) NOT NULL,
	cep VARCHAR(15) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	email VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Cliente PRIMARY KEY(codigo),
	CONSTRAINT UK_Cliente_cpf UNIQUE(cpf)
)
GO


CREATE TABLE Autor(
	codigo INT IDENTITY,	
	nome VARCHAR(50) NOT NULL,
	pseudonimo VARCHAR(50) NOT NULL,
	nacionalidade VARCHAR(50) NOT NULL,
	CONSTRAINT PK_Autor PRIMARY KEY(codigo)
)
GO


CREATE TABLE Desenhista(
	codigo INT IDENTITY,	
	nome VARCHAR(50) NOT NULL,
	arteFinalista BIT NOT NULL,
	CONSTRAINT PK_Desenhista PRIMARY KEY(codigo)
)
GO


CREATE TABLE Colorista(
	codigo INT IDENTITY,	
	nome VARCHAR(50) NOT NULL,
	letrista BIT NOT NULL,
	CONSTRAINT PK_Colorista PRIMARY KEY(codigo)
)
GO


CREATE TABLE Produto(
	codigo INT IDENTITY,	
	titulo VARCHAR(100) NOT NULL,
	genero VARCHAR(50) NOT NULL,
	editora VARCHAR(50) NOT NULL,
	anoPublicacao INT NOT NULL,
	capaDura BIT NOT NULL,
	sinopse VARCHAR(MAX) NOT NULL,
	precoCusto SMALLMONEY NOT NULL,
	margemLucro FLOAT NOT NULL,
	CONSTRAINT PK_Produto PRIMARY KEY(codigo)
)
GO


-- Tabelas com dependencias prévias


CREATE TABLE Livro(
	codigoProduto INT,	
	edicao VARCHAR(5) NOT NULL,
	digital BIT NOT NULL,
	CONSTRAINT PK_Livro PRIMARY KEY(codigoProduto),
	CONSTRAINT FK_Livro_Produto FOREIGN KEY(codigoProduto) REFERENCES Produto(codigo)
)
GO


CREATE TABLE HQ(
	codigoProduto INT,
	codigoDesenhista INT,
	codigoColorista INT,
	volume INT DEFAULT 0, -- 0 significa Volume Único
	volumesArco INT DEFAULT 1 -- 1 significa Volume Único
	CONSTRAINT PK_HQ PRIMARY KEY(codigoProduto),
	CONSTRAINT FK_HQ_Produto FOREIGN KEY(codigoProduto) REFERENCES Produto(codigo),
	CONSTRAINT FK_HQ_Desenhista FOREIGN KEY(codigoDesenhista) REFERENCES Desenhista(codigo),
	CONSTRAINT FK_HQ_Colorista FOREIGN KEY(codigoColorista) REFERENCES Colorista(codigo)
)
GO


CREATE TABLE Imagem(
	codigo INT IDENTITY,
	codigoProduto INT NOT NULL,
	caminho VARCHAR(75) NOT NULL,
	descricao VARCHAR(50),
	CONSTRAINT PK_Image PRIMARY KEY(codigo),
	CONSTRAINT FK_Image_Produto FOREIGN KEY(codigoProduto) REFERENCES Produto(codigo)
)
GO


CREATE TABLE Venda(
	codigo INT IDENTITY,
	codigoCliente INT NOT NULL,
	nf INT NOT NULL,
	serie VARCHAR(5) NOT NULL,
	emissao DATE NOT NULL,
	CONSTRAINT PK_Venda PRIMARY KEY(codigo),
	CONSTRAINT FK_Venda_Cliente FOREIGN KEY(codigoCliente) REFERENCES Cliente(codigo)
)
GO


CREATE TABLE VendaItem(
	codigo INT IDENTITY,
	codigoVenda INT NOT NULL,
	codigoProduto INT NOT NULL,
	quantidade INT NOT NULL,
	precoItem SMALLMONEY NOT NULL,
	CONSTRAINT PK_VendaItem PRIMARY KEY(codigo),
	CONSTRAINT FK_VendaItem_Venda FOREIGN KEY(codigoVenda) REFERENCES Venda(codigo),
	CONSTRAINT FK_VendaItem_Produto FOREIGN KEY(codigoProduto) REFERENCES Produto(codigo)
)
GO


-- Apesar de não possuir chave estrangeira (e, portanto, dependência de existencia prévia de outra tabela)
-- nesse ponto das criações fica mais visivel sua utilização

CREATE TABLE Entrega(
	codigo INT IDENTITY,	
	identificador VARCHAR(75) NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	dataHoraEnvio DATETIME NOT NULL,
	transportadora VARCHAR(50),
	CONSTRAINT PK_Entrega PRIMARY KEY(codigo),
	CONSTRAINT CHK_Entrega CHECK(tipo = 'correios' OR tipo = 'transportadora')
)
GO


-- Tabelas de relacionamento

CREATE TABLE AutorProduto(
	codigoAutor INT,
	codigoProduto INT,	
	CONSTRAINT PK_AutorProduto PRIMARY KEY(codigoAutor, codigoProduto),
	CONSTRAINT FK_AutorProduto_Autor FOREIGN KEY(codigoAutor) REFERENCES Autor(codigo),
	CONSTRAINT FK_AutorProduto_Produto FOREIGN KEY(codigoProduto) REFERENCES Produto(codigo)
)
GO


CREATE TABLE EntregaVenda(
	codigoEntrega INT,
	codigoVenda INT,	
	CONSTRAINT PK_EntregaVenda PRIMARY KEY(codigoEntrega, codigoVenda),
	CONSTRAINT FK_EntregaVenda_Entrega FOREIGN KEY(codigoEntrega) REFERENCES Entrega(codigo),
	CONSTRAINT FK_EntregaVenda_Venda FOREIGN KEY(codigoVenda) REFERENCES Venda(codigo)
)
GO
