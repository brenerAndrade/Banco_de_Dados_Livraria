/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
�ltima altera��o: 06/04/2023 - 18:00 - Brener Andrade
Descri��o: Inser��es iniciais (Script de DML)
--------------------------------------------*/

-- Conex�o com o Banco
USE Livraria
GO


INSERT INTO Cliente
-- nome, cpf, logradouro, bairro, cidade, uf, cep, telefone, email
VALUES ('Pedro Santana Carvalho', '08081895906', 'Rua: Amazonas, 10', 'S�o Crist�v�o', 'Ibirit�', 'MG', '65111-775', '(31) 70181-0702', 'pedro@gmail.com'),
       ('Patricia Medeiros Cardoso', '03423864176', 'Rua: Treze de Maio, 65', 'Boa Vista', 'S�o Jos�', 'SC', '49038-666', '(48) 55396-1576', 'patricia@hotmail.com'),
	   ('Antonia Moraes Medeiros', '03312625920', 'Rua: Onze, 100', 'Bela Vista', 'Aracaju', 'SE', '59786-110', '(79) 26466-7605', 'antonia@gmail.com'),
	   ('Paulo Nunes Lima', '01774718758', 'Av: Santa Rita, 325', 'Industrial', 'Canoas', 'RS', '85478-126', '(51) 66450-4232', 'paulo@outlook.com'),
	   ('Maria Marques Rocha', '61107292301', 'Rua: Paran�, 2077', 'Centro', 'Boa Vista', 'RR', '54345-400', '(95) 91348-5672', 'maria@yahoo.com'),
	   ('Juliana Santana Almeida', '72066761206', 'Av: Castro Alves, 671', 'Centro', 'Patos de Minas', 'MG', '77321-214', '(31) 60306-3288', 'juliana@gmail.com'),
	   ('Paulo Santana Silva', '91526735610', 'Rua: S�o Francisco, 1801', 'Centro', 'Recife', 'PE', '57274-517', '(81) 95837-1825', 'paulo@gmail.com'),
	   ('Ana Rocha Ferreira', '37502587080', 'Rua: Alagoas, 85', 'Jardim Marta', 'Parna�ba', 'PI', '35484-813', '(86) 90314-6894', 'ana@gmail.com'),
	   ('Aline Vieira Silva', '20448275902', 'Rua: S�o Jo�o, 533', 'Vila Silva', 'Guarapari', 'ES', '07816-085', '(27) 94521-2837', 'aline@outlook.com'),
	   ('Francisca Pereira Nunes', '37795554849', 'Rua: Tiradentes, 600', 'Jardim Santo Ant�nio', 'Arauc�ria', 'PR', '80934-340', '(41) 55242-8084', 'francisca@uol.com'),
	   ('Adriana Borges Barbosa', '95998179153', 'Avenida dois, 350', 'Vila S�o Crist�v�o', 'Santa Rita', 'PB', '78246-990', '(83) 90097-3649', 'adriana@uol.com'),
	   ('Lucas Campos Fernandes', '00389560200', 'Rua: Belo Horizonte, 47', 'Vila Nova', 'Juazeiro', 'BA', '80111-511', '(71) 19636-5844', 'lucas@gmail.com')

-- SELECT * FROM Cliente
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Autor
-- nome, pseudonimo, nacionalidade
VALUES ('Carl Edward Sagan', 'Carl Sagan', 'EUA'),
       ('Fi�dor Mikhailovitch Dostoi�vski', 'Dostoi�vski', 'Russia'),
	   ('Aldous Huxley', 'Huxley', 'Inglaterra'),
	   ('John Anthony Burgess Wilson', 'Anthony Burgess', 'Inglaterra'),
	   ('Isaac Asimov', 'Isaac Asimov', 'Russia'),
	   ('William Peter Blatty', 'William Peter Blatty', 'EUA'),
	   ('Alan Moore', 'Alan Moore', 'Inglaterra'),
	   ('Arthur Spiegelman', 'Art Spiegelman', 'Su�cia'),
	   ('Alejandro Jodorowsky Prullansky', 'Jodorowsky', 'Chile'),
	   ('Katsuhiro Otomo', 'Katsuhiro Otomo', 'Jap�o'),
	   ('Frank Miller', 'Frank Miller', 'EUA'),
	   ('Neil Richard MacKinnon Gaiman', 'Neil Gaiman', 'Inglaterra'),
	   ('Osamu Tezuka', 'Osamu Tezuka', 'Jap�o'),
	   ('William Erwin Eisner', 'Will Eisner', 'EUA'),
	   ('H�ctor Germ�n Oesterheld', 'Oesterheld', 'Argentina'),
	   ('Roy Thomas', 'Roy Thomas', 'EUA'),
	   ('Stanley Martin Lieber', 'Stan Lee', 'EUA'),
	   ('Stephen John Ditko', 'Steve Ditko', 'EUA'),
	   ('Mauricio Ara�jo de Sousa', 'Mauricio de Sousa', 'Brasil'),
	   ('Arnaldo Angeli Filho', 'Angeli', 'Brasil'),
	   ('Laerte Coutinho', 'Laerte', 'Brasil'),
	   ('Glauco Villas Boas', 'Glauco', 'Brasil'),
	   ('Robert Crumb', 'Robert Crumb', 'EUA'),
	   ('Hiroshi Hirata', 'Hiroshi Hirata', 'Jap�o'),
	   ('Junji Ito', 'Junji Ito', 'Jap�o'),
	   ('Paolo Eleuteri Serpieri', 'Paolo Serpieri', 'Italia'),
	   ('Philippe Druillet', 'Druillet', 'Fran�a'),
	   ('Umberto Eco', 'Umberto Eco', 'It�lia'),
	   ('Jos� de Sousa Saramago', 'Jos� Saramago', 'Portugal'),
	   ('Ursula Kroeber Le Guin', 'Ursula Le Guin', 'EUA'),
	   ('Chaya Pinkhasivna Lispector', 'Clarice Lispector', 'Ucr�nia'),
	   ('Agatha Mary Clarissa Christie', 'Agatha Christie', 'Inglaterra')

-- SELECT * FROM Autor
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Desenhista
-- nome, arteFinalista
VALUES ('David Lloyd', 1),
       ('Moebius', 1),
	   ('Zoran Janjetov', 1),
	   ('Mike Deodato', 1),
	   ('John Buscema', 1),
	   ('Alberto Breccia', 1),
	   ('Frank Frazetta', 1),
	   ('Esteban Maroto', 1),
	   ('Jacob Kurtzberg', 1),
	   ('Sergio Toppi', 1),
	   ('Shiko', 1)

-- SELECT * FROM Desenhista
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Colorista
-- nome, letrista
VALUES ('Marte Gracia', 0),
       ('Frank Martin Junior', 1),
	   ('Matt Wilson', 1),
	   ('Dean White', 1),
	   ('Marcio Menyz', 0),
	   ('Priscilla Tramontano', 1),
	   ('Mariane Gusm�o', 0)

-- SELECT * FROM Colorista
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Produto
-- titulo, genero, editora, anoPublicacao, capaDura, sinopse, precoCusto
VALUES ('O mundo assombrado pelos dem�nios', 
        'Ci�ncia', 
        'Companhia das Letras', 
        1995, 
        0, 
		'Assombrado com as explica��es pseudocient�ficas e m�sticas que ocupam cada vez mais os espa�os dos meios de comunica��o, Carl Sagan reafirma o poder positivo e ben�fico da ci�ncia e da tecnologia para iluminar os dias de hoje e recuperar os valores da racionalidade. Como todos os livros do autor, O mundo assombrado pelos dem�nios est� cheio de informa��es surpreendentes, transmitidas com humor e gra�a. Seus ataques muitas vezes divertidos � falsa ci�ncia, �s concep��es exc�ntricas e aos irracionalismos do momento s�o acompanhados por lembran�as da inf�ncia, quando seus pais o colocaram em contato pela primeira vez com os dois modelos de pensamento fundamentais para o m�todo cient�fico: o ceticismo e a admira��o.',
        30.00,
		0.1),

       ('Admir�vel mundo novo', 
        'Fic��o', 
        'Biblioteca Azul', 
        1932, 
        0, 
		'Em uma sociedade organizada segundo princ�pios estritamente cient�ficos, Bernard Marx, um psic�logo, sente-se inadequado quando se compara aos outros seres de sua casta. Ao descobrir uma �reserva hist�rica� que preserva costumes de uma sociedade anterior (muito semelhante � do leitor) Bernard vai perceber as diferen�as entre esta civiliza��o e a sua e a partir de um sentimento de inconformismo ele desafiar� o mundo. A hist�ria de Bernard se passa em um ambiente em que a literatura, a m�sica e o cinema s� t�m a fun��o de solidificar a aliena��o; um universo que louva o avan�o da t�cnica, a produ��o em s�rie, a uniformidade contra a diversidade.',
        39.00,
		0.1),

       ('Laranja Mec�nica: Edi��o Comemorativa de 50 anos', 
        'Fic��o', 
        'Aleph', 
        1962, 
        1, 
		'Publicado pela primeira vez em 1962, e imortalizado 9 anos depois pelo filme de Stanley Kubrick, Laranja Mec�nica n�o s� est� entre os cl�ssicos eternos da fic��o como representa um marco na cultura pop do s�culo 20. Meio s�culo depois, a perturbadora hist�ria de Alex membro de uma gangue de adolescentes que � capturado pelo Estado e submetido a uma terapia de condicionamento social continua fascinando, e desconcertando, leitores mundo afora. Esta edi��o especial de 50 anos em capa dura e impressa em duas cores (preto e laranja).',
        80.00,
		0.1),

       ('Trilogia da Funda��o - Edi��o de luxo', 
        'Fic��o', 
        'Aleph', 
        1951, 
        1, 
		'A humanidade est� em risco. Uma ci�ncia revolucion�ria prev� uma longa e inevit�vel era de trevas e barb�rie. Para evitar que isso aconte�a, o chamado plano Seldon � colocado em pr�tica ao longo de s�culos, e percorre a hist�ria da gal�xia, prevendo conflitos de nossa civiliza��o. Mas poder� o comportamento humano obedecer a um padr�o cient�fico?',
        120.00,
		0.1),

       ('O Exorcista', 
        'Horror', 
        'Harper Collins', 
        1971, 
        0, 
		'Um cl�ssico do terror com mais de 13 milh�es de exemplares vendidos. Uma obra que mudou a cultura pop para sempre, O exorcista � o livro que deu origem ao maior filme de terror do s�culo XX. Quatro d�cadas ap�s chocar o mundo inteiro, a obra-prima de William Peter Blatty permanece uma met�fora moderna do combate entre o sagrado e o profano, em um dos romances mais macabros j� escritos.',
        45.00,
		0.1),

       ('Crime e castigo', 
        'Literatura', 
        'Editora 34', 
        1866, 
        0, 
		'Rask�lnikov, um jovem estudante, pobre e desesperado, perambula pelas ruas de S�o Petersburgo at� cometer um crime que tentar� justificar por uma teoria: grandes homens, como C�sar ou Napole�o, foram assassinos absolvidos pela Hist�ria. Este ato desencadeia uma narrativa labir�ntica que arrasta o leitor por becos, tabernas e pequenos c�modos, povoados de personagens que lutam para preservar sua dignidade contra as v�rias formas da tirania.',
        63.00,
		0.1),

       ('Cosmos', 
        'Astronomia', 
        'Companhia das Letras', 
        1980, 
        0, 
		'Cosmos retra�a 14 bilh�es de anos de evolu��o c�smica, explorando t�picos como a origem da vida, o c�rebro humano, hier�glifos eg�pcios, miss�es espaciais, a morte do sol, a evolu��o das gal�xias e as for�as e indiv�duos que ajudaram a moldar a ci�ncia moderna. Numa prosa transparente, Carl Sagan revela os segredos do planeta azul habitado por uma forma de vida que apenas come�a a descobrir sua pr�pria identidade e a se aventurar no vasto oceano do espa�o sideral. Aqui, o tratamento dos temas cient�ficos est� sempre imbricado com outros campos de estudo tradicionais, como hist�ria, antropologia, arte e filosofia.',
        49.00,
		0.1),

       ('Os irm�os Karam�zov', 
        'Literatura', 
        'Editora 34', 
        1880, 
        1, 
		'�ltimo romance de Dostoi�vski, Os irm�os Karam�zov representa uma s�ntese de toda sua produ��o e � tido por muitos como sua obra-prima. Um marco da literatura universal, influenciou pensadores como Nietzsche e Freud - que o considerava "o maior romance j� escrito" - e sucessivas gera��es de escritores em todo o mundo.',
        100.00,
		0.1),

       ('P�lido ponto azul', 
        'Astronomia', 
        'Companhia das Letras', 
        1994, 
        0, 
		'"Um dos grandes astr�nomos do s�culo XX, Carl Sagan revela como descobertas cient�ficas alteraram a percep��o de quem somos e do lugar que ocupamos no Universo. Edi��o inclui caderno de imagens. Temos algum tipo de privil�gio em rela��o a outros corpos celestes? Qual deve ser nossa postura perante a imensid�o do universo? Faz sentido investir em miss�es aeroespaciais incertas enquanto ainda somos incapazes de solucionar os problemas que nos afligem todos os dias? Em P�lido ponto azul, Carl Sagan esmi��a essas perguntas e continua a revolucion�ria investiga��o sobre o tempo e o espa�o iniciada em Cosmos, uma das mais importantes obras de divulga��o cient�fica do s�culo XX.',
        45.00,
		0.1),

       ('V de Vingan�a', 
        'Graphic Novels', 
        'Panini', 
        2006, 
        1, 
		'Uma poderosa e aterradora hist�ria sobre a perda da liberdade e cidadania em um mundo totalit�rio bem poss�vel, V DE VINGAN�A permanece como uma das maiores obras dos quadrinhos e o trabalho que revelou ao mundo seus criadores, Alan Moore e David Lloyd. Encenada em uma Inglaterra de um futuro imagin�rio que se entregou ao fascismo, esta arrebatadora hist�ria captura a natureza sufocante da vida em um estado policial autorit�rio e a for�a redentora do esp�rito humano que se rebela contra esta situa��o. Obra de surpreendente clareza e intelig�ncia, V DE VINGAN�A traz inigual�vel profundidade de caracteriza��es e verossimilhan�a, em um audacioso conto de opress�o e resist�ncia.',
        145.00,
		0.1),

       ('Maus', 
        'Graphic Novels', 
        'Panini', 
        1991, 
        0, 
		'Nas tiras, os judeus s�o desenhados como ratos e os nazistas ganham fei��es de gatos; poloneses n�o-judeus s�o porcos e americanos, cachorros. Esse recurso, aliado � aus�ncia de cor dos quadrinhos, reflete o esp�rito do livro: trata-se de um relato incisivo e perturbador, que evidencia a brutalidade da cat�strofe do Holocausto. Spiegelman, por�m, evita o sentimentalismo e interrompe algumas vezes a narrativa para dar espa�o a d�vidas e inquieta��es. � implac�vel com o protagonista, seu pr�prio pai, retratado como valoroso e destemido, mas tamb�m como sovina, racista e mesquinho. De v�rios pontos de vista, uma obra sem equivalente no universo dos quadrinhos e um relato hist�rico de valor inestim�vel.',
        45.00,
		0.1),

       ('Incal', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2021, 
        1, 
		'Em um mundo dist�pico e degenerado, John Difool, um detetive particular de quinta categoria, v� sua vida virar de cabe�a para baixo quando encontra um antigo artefato m�stico chamado "Incal". Em pouco tempo, ele se v� envolvido num conflito �pico entre o Metabar�o, o maior guerreiro da gal�xia, e os descomunais poderes cient�ficos do Tecnopapa. Movido por situa��es cada vez inusitadas, Difool ter� que lutar n�o s� pela sua sobreviv�ncia, mas pela de todo o universo. Incal, uma das obras mais aclamadas do mundo, � fruto da mente de dois g�nios que revolucionaram os quadrinhos e o cinema nos anos 1970 e 1980.',
        90.00,
		0.1),

       ('Watchmen - Edi��o Definitiva', 
        'Graphic Novels', 
        'Panini', 
        2009, 
        1, 
		'O ano � 1985. Os Estados Unidos s�o uma na��o totalit�ria e fechada, isolada do resto do mundo. A presen�a de arsenais nucleares e dos chamados super-her�is mant�m um certo equil�brio entre as for�as do planeta... at� que o rel�gio do fim do mundo come�a a marchar para a meia-noite e a ra�a humana para um abismo sem-fim. A sombria e inigual�vel trama tem in�cio com ilus�es paran�icas do supostamente insano her�i Rorschach, um dos Watchmen que patrulhavam os EUA d�cadas atr�s. Mas ele estaria realmente insano ou na verdade teria descoberto uma s�rdida conspira��o para assassinar super-her�is -- ou, pior ainda, milh�es de civis inocentes? Fugindo da lei, Rorschach junta-se a ex-companheiros do passado em uma desesperada tentativa de salvar suas pr�prias vidas... e o que acabam descobrindo, al�m de abalar suas estruturas, poder� alterar o pr�prio destino do planeta Terra!',
        108.00,
		0.1),

       ('Akira - Vol. 1', 
        'Mang�', 
        'JBC', 
        2015, 
        0, 
		'Ap�s atropelar uma crian�a de apar�ncia estranha, Tetsuo Shima (o melhor amigo de Kaneda), come�a a sentir algumas rea��es anormais. Isso acaba chamando a aten��o do governo que est� projetando diversas experi�ncias secretas e acabam sequestrando Tetsuo. Nesta aventura cheia de fic��o, Kaneda entra em cena para salvar o amigo, enquanto uma terr�vel e monstruosa entidade amea�a despertar.',
        60.00,
		0.1),

       ('Akira - Vol. 2', 
        'Mang�', 
        'JBC', 
        2016, 
        0, 
		'Tetsuo renasce como N�mero 41, com um poder maior do que Kaneda ou o governo poderiam imaginar. Depois de ingerir a c�psula roubada, escapa do controle do Coronel e ataca a fortaleza escondida embaixo do Est�dio Ol�mpico. Enquanto isso, Miyako, fundadora de uma nova religi�o, prev� uma grande cat�strofe, provocada pelo despertar de AKIRA. O que � AKIRA, o maior segredo da na��o?!',
        50.00,
		0.1),

       ('Akira - Vol. 3', 
        'Mang�', 
        'JBC', 
        2017, 
        0, 
		'Kaneda e Kei conseguem escapar da base secreta subterr�nea, levando com eles um misterioso garoto com o n�mero 28 na palma da m�o. Mal sabiam eles que esse indiv�duo era AKIRA, o maior segredo da na��o, que tinha despertado!! A disputa pela posse do garoto agora ocorre em tr�s frentes: de um lado, a guerrilha comandada por Nezu; do outro, o Ex�rcito sob as ordens do Coronel; e por �ltimo, a seita da sacerdotiza Miyako. Quem o tiver em m�os obter� um grande poder ou�?! ',
        55.00,
		0.1),

       ('Antes Do Incal', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2021, 
        1, 
		'Chegou a hora de acompanhar as aventuras do jovem John Difool antes de se tornar o mais famoso anti-her�i da fic��o cient�fica! Esse � o in�cio da jornada �pica que transformou o famigerado detetive de classe �R� no homem que mudaria o destino de todo o cosmo. Neste segundo volume da cole��o TODO INCAL, testemunhamos John em busca de suas origens enquanto enfrenta perigosos conflitos e uma grande conspira��o, seu primeiro encontro com Deepo e a apari��o de personagens memor�veis, como Metabar�o e Diavaloo',
        90.00,
		0.1),

       ('Akira - Vol. 4', 
        'Mang�', 
        'JBC', 
        2018, 
        0, 
		'A profecia de Miyako havia sido realizada. Uma trag�dia envolvendo Takashi e Akira causa o despertar do N� 28, destruindo toda Neo-Tokyo. Os sobreviventes observavam incr�dulos as ru�nas do que um dia foi a capital do Jap�o� 42 dias depois da cat�strofe causada por Akira, na �rea oeste das ru�nas de Neo-Tokyo, havia surgido uma pot�ncia chamada de Grande Imp�rio de Tokyo, no qual Akira era idolatrado como o �Grande Despertado�, e Tetsuo imperava com demonstra��es p�blicas de seu poder. Qual o rumo que o Jap�o ir� tomar?!',
        60.00,
		0.1),

       ('Akira - Vol. 5', 
        'Mang�', 
        'JBC', 
        2019, 
        0, 
		'A cada novo despertar, Tetsuo se aproxima mais ainda do poder de Akira! E ap�s sobreviver a todas essas situa��es ca�ticas, Kaneda tamb�m volta � linha de combate, dando in�cio � batalha por Akira, em um cen�rio de ru�nas que beira o verdadeiro caos!',
        50.00,
		0.1),

       ('Akira - Vol. 6', 
        'Mang�', 
        'JBC', 
        2020, 
        0, 
		'Tetsuo sofre uma transforma��o bizarra e perde o controle de seu �poder�. Para tentar derrot�-lo, a equipe de opera��es especiais do Ex�rcito, o Coronel e os remanescentes dos companheiros de Kaneda agem cada um de seu jeito para alcan�ar seu objetivo�! O Imp�rio se encontra em estado de alerta geral!! A tens�o chega ao �pice na gigantesca ru�na do que um dia foi Neo-Tokyo e a intensa saga por tr�s de AKIRA est� para encerrar',
        50.00,
		0.1),

       ('Incal Final', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2022, 
        1, 
		'O famoso e famigerado detetive John Difool e seu fiel companheiro Deepo s�o involuntariamente arremessados em uma nova miss�o para salvar o Universo, enquanto seu mundo enfrenta a amea�a de um v�rus met�lico que devora tudo. Incal Final marca o retorno do vision�rio roteirista Jodorowsky � �pica mitologia que criou ao lado de Moebius no in�cio dos anos 1980.',
        90.00,
		0.1)

-- SELECT * FROM Produto
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Livro 
-- codigoProduto, edicao, digital
VALUES (1, 5, 0),
	   (2, 8, 0),
	   (3, 3, 0),
	   (4, 6, 0),
	   (5, 5, 1),
	   (6, 7, 0),
	   (7, 5, 0),
	   (8, 8, 0),
	   (9, 5, 1)

-- SELECT * FROM Livro
GO

--------------------------------------------------------------------------------------------------
INSERT INTO HQ 
-- codigoProduto, codigoDesenhista, codigoColorista, volume, volumesArco
VALUES (10, 1, 1, 0, 1),
       (11, NULL, NULL, 0, 1),
	   (12, 2, NULL, 1, 3),
	   (13, 1, 3, 0, 1),
	   (14, NULL, NULL, 1, 6),
	   (15, NULL, NULL, 2, 6),
	   (16, NULL, NULL, 3, 6),
	   (17, 3, 2, 2, 3),
	   (18, NULL, NULL, 4, 6),
	   (19, NULL, NULL, 5, 6),
	   (20, NULL, NULL, 6, 6),
	   (21, 2, 4, 3, 3)

-- SELECT * FROM HQ
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Imagem
-- codigo, codigoProduto, caminho, descricao
VALUES (1, '\imagens\1a.jpg', 'capa'),
       (1, '\imagens\1b.jpg', 'contracapa'),
	   (2, '\imagens\2a.jpg', 'capa'),
       (2, '\imagens\2b.jpg', 'contracapa'),
	   (3, '\imagens\3a.jpg', 'capa'),
       (3, '\imagens\3b.jpg', 'contracapa'),
	   (4, '\imagens\4a.jpg', 'capa'),
       (4, '\imagens\4b.jpg', 'contracapa'),
	   (5, '\imagens\5a.jpg', 'capa'),
       (5, '\imagens\5b.jpg', 'contracapa'),
	   (6, '\imagens\6a.jpg', 'capa'),
       (6, '\imagens\6b.jpg', 'contracapa'),
	   (7, '\imagens\7a.jpg', 'capa'),
       (7, '\imagens\7b.jpg', 'contracapa'),
	   (8, '\imagens\8a.jpg', 'capa'),
       (8, '\imagens\8b.jpg', 'contracapa'),
	   (9, '\imagens\9a.jpg', 'capa'),
       (9, '\imagens\9b.jpg', 'contracapa'),
	   (10, '\imagens\10a.jpg', 'capa'),
       (10, '\imagens\10b.jpg', 'contracapa'),
	   (11, '\imagens\11a.jpg', 'capa'),
       (11, '\imagens\11b.jpg', 'contracapa'),
	   (12, '\imagens\12a.jpg', 'capa'),
       (12, '\imagens\12b.jpg', 'contracapa'),
	   (13, '\imagens\13a.jpg', 'capa'),
       (13, '\imagens\13b.jpg', 'contracapa'),
	   (14, '\imagens\14a.jpg', 'capa'),
       (14, '\imagens\14b.jpg', 'contracapa'),
	   (15, '\imagens\15a.jpg', 'capa'),
       (15, '\imagens\15b.jpg', 'contracapa'),
	   (16, '\imagens\16a.jpg', 'capa'),
       (16, '\imagens\16b.jpg', 'contracapa'),
	   (17, '\imagens\17a.jpg', 'capa'),
       (17, '\imagens\17b.jpg', 'contracapa'),
	   (18, '\imagens\18a.jpg', 'capa'),
       (18, '\imagens\18b.jpg', 'contracapa'),
	   (19, '\imagens\19a.jpg', 'capa'),
       (19, '\imagens\19b.jpg', 'contracapa'),
	   (20, '\imagens\20a.jpg', 'capa'),
       (20, '\imagens\20b.jpg', 'contracapa'),
	   (21, '\imagens\21a.jpg', 'capa'),
       (21, '\imagens\21b.jpg', 'contracapa')

-- SELECT * FROM Imagem
GO

--------------------------------------------------------------------------------------------------
INSERT INTO AutorProduto
-- codigoAutor, codigoProduto
VALUES (1, 1),
       (2, 6),
       (3, 2),
       (4, 3),
	   (5, 4),
	   (6, 5),
	   (1, 7),
	   (2, 8),
	   (1, 9),
	   (7, 10),
	   (8, 11),
	   (9, 12),
	   (7, 13),
	   (10, 14),
	   (10, 15),
	   (10, 16),
	   (9, 17),
	   (10, 18),
	   (10, 19),
	   (10, 20),
	   (9, 21)

-- SELECT * FROM AutorProduto
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Venda
-- codigoCliente, nf, serie, emissao
VALUES (1, 1, '12023', '10/04/2023'),
       (10, 2, '12023', '10/04/2023'),
	   (4, 3, '12023', '10/04/2023'),
	   (6, 4, '12023', '10/04/2023'),
	   (8, 5, '12023', '11/04/2023'),
	   (2, 6, '12023', '11/04/2023'),
	   (1, 7, '12023', '11/04/2023'),
	   (7, 8, '12023', '12/04/2023'),
	   (9, 9, '12023', '12/04/2023'),
	   (3, 10, '12023', '12/04/2023'),
	   (6, 11, '12023', '12/04/2023'),
	   (3, 12, '12023', '12/04/2023'),
	   (11, 13, '12023', '13/04/2023'),
	   (5, 14, '12023', '13/04/2023'),
	   (5, 15, '12023', '14/04/2023'),
	   (12, 16, '12023', '14/04/2023'),
	   (9, 17, '12023', '14/04/2023')

-- SELECT * FROM Venda
GO

--------------------------------------------------------------------------------------------------
INSERT INTO VendaItem
-- codigoVenda, codigoProduto, quantidade, precoItem
VALUES (1, 1, 1, 33.00),
       (2, 3, 1, 90.00),
	   (2, 10, 1, 160.00),
	   (3, 2, 2, 140.00),
	   (3, 8, 2, 220.00),
	   (3, 11, 1, 50.00),
	   (4, 12, 1, 100.00),
	   (4, 13, 1, 120.00),
	   (5, 5, 1, 50.00),
	   (5, 9, 2, 100.00),
	   (6, 12, 1, 100.00),
	   (6, 17, 1, 100.00),
	   (6, 21, 1, 100.00),
	   (7, 4, 1, 135.00),
	   (8, 7, 2, 110.00),
	   (8, 9, 2, 100.00),
	   (9, 6, 1, 70.00),
	   (9, 8, 1, 100.00),
	   (10, 3, 3, 120.00),
	   (11, 10, 1, 150.00),
	   (11, 13, 1, 115.00),
	   (12, 14, 1, 65.00),
	   (12, 15, 1, 50.00),
	   (12, 16, 1, 65.00),
	   (13, 1, 2, 70.00),
	   (13, 2, 2, 90.00),
	   (13, 3, 2, 180.00),
	   (14, 1, 1, 35.00),
	   (14, 7, 1, 55.00),
	   (14, 9, 1, 50.00),
	   (15, 10, 1, 160.00),
	   (16, 14, 1, 66.00),
	   (16, 15, 1, 55.00),
	   (16, 16, 1, 65.00),
	   (16, 18, 1, 65.00),
	   (16, 19, 1, 55.00),
	   (16, 20, 1, 55.00),
	   (17, 3, 2, 180.00)

-- SELECT * FROM VendaItem
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Entrega
-- identificador, tipo, dataHoraEnvio, transportadora
VALUES ('EFgGqsLXkZ', 'correios', '11/04/2023 07:00:00', NULL),
       ('GT6TuQ823q', 'correios', '11/04/2023 07:00:00', NULL),
	   ('cHEGMF6UPK', 'transportadora', '12/04/2023 07:00:00', 'R�pido Express'),
	   ('YgrQfEDRbu', 'transportadora', '12/04/2023 08:00:00', 'LogExpress'),
	   ('n5uZrg7Zln', 'correios', '12/04/2023 08:00:00', NULL),
	   ('qcYqsTkKR8', 'transportadora', '12/04/2023 08:00:00', 'R�pido Express'),
	   ('MrrPAAR3rX', 'correios', '12/04/2023 13:00:00', NULL),
	   ('65c7RO95dx', 'correios', '13/04/2023 07:00:00', NULL),
	   ('WKSo5akEmF', 'transportadora', '13/04/2023 13:00:00', 'LogExpress'),
	   ('2hFKLe0rDU', 'transportadora', '13/04/2023 13:00:00', 'R�pido Express'),
	   ('3Bdmu2DrkT', 'transportadora', '13/04/2023 17:00:00', 'LogExpress'),
	   ('EHZ8TjPGwW', 'correios', '14/04/2023 07:00:00', NULL)

-- SELECT * FROM Entrega
GO

--------------------------------------------------------------------------------------------------
INSERT INTO EntregaVenda
-- codigoEntrega, codigoVenda
VALUES (1, 1),
       (1, 2),
	   (1, 3),
	   (2, 4),
	   (3, 5),
	   (4, 6),
	   (4, 7),
	   (4, 8),
	   (5, 3),
	   (6, 9),
	   (7, 10),
	   (8, 11),
	   (8, 12),
	   (9, 13),
	   (10, 14),
	   (10, 15),
	   (10, 16),
	   (11, 13),
	   (12, 16)

-- SELECT * FROM EntregaVenda
GO