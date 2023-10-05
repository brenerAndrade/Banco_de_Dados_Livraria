/*-------------------------------------------
Banco: Livraria
Autor: Ralfe
Última alteração: 06/04/2023 - 18:00 - Brener Andrade
Descrição: Inserções iniciais (Script de DML)
--------------------------------------------*/

-- Conexão com o Banco
USE Livraria
GO


INSERT INTO Cliente
-- nome, cpf, logradouro, bairro, cidade, uf, cep, telefone, email
VALUES ('Pedro Santana Carvalho', '08081895906', 'Rua: Amazonas, 10', 'São Cristóvão', 'Ibirité', 'MG', '65111-775', '(31) 70181-0702', 'pedro@gmail.com'),
       ('Patricia Medeiros Cardoso', '03423864176', 'Rua: Treze de Maio, 65', 'Boa Vista', 'São José', 'SC', '49038-666', '(48) 55396-1576', 'patricia@hotmail.com'),
	   ('Antonia Moraes Medeiros', '03312625920', 'Rua: Onze, 100', 'Bela Vista', 'Aracaju', 'SE', '59786-110', '(79) 26466-7605', 'antonia@gmail.com'),
	   ('Paulo Nunes Lima', '01774718758', 'Av: Santa Rita, 325', 'Industrial', 'Canoas', 'RS', '85478-126', '(51) 66450-4232', 'paulo@outlook.com'),
	   ('Maria Marques Rocha', '61107292301', 'Rua: Paraná, 2077', 'Centro', 'Boa Vista', 'RR', '54345-400', '(95) 91348-5672', 'maria@yahoo.com'),
	   ('Juliana Santana Almeida', '72066761206', 'Av: Castro Alves, 671', 'Centro', 'Patos de Minas', 'MG', '77321-214', '(31) 60306-3288', 'juliana@gmail.com'),
	   ('Paulo Santana Silva', '91526735610', 'Rua: São Francisco, 1801', 'Centro', 'Recife', 'PE', '57274-517', '(81) 95837-1825', 'paulo@gmail.com'),
	   ('Ana Rocha Ferreira', '37502587080', 'Rua: Alagoas, 85', 'Jardim Marta', 'Parnaíba', 'PI', '35484-813', '(86) 90314-6894', 'ana@gmail.com'),
	   ('Aline Vieira Silva', '20448275902', 'Rua: São João, 533', 'Vila Silva', 'Guarapari', 'ES', '07816-085', '(27) 94521-2837', 'aline@outlook.com'),
	   ('Francisca Pereira Nunes', '37795554849', 'Rua: Tiradentes, 600', 'Jardim Santo Antônio', 'Araucária', 'PR', '80934-340', '(41) 55242-8084', 'francisca@uol.com'),
	   ('Adriana Borges Barbosa', '95998179153', 'Avenida dois, 350', 'Vila São Cristóvão', 'Santa Rita', 'PB', '78246-990', '(83) 90097-3649', 'adriana@uol.com'),
	   ('Lucas Campos Fernandes', '00389560200', 'Rua: Belo Horizonte, 47', 'Vila Nova', 'Juazeiro', 'BA', '80111-511', '(71) 19636-5844', 'lucas@gmail.com')

-- SELECT * FROM Cliente
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Autor
-- nome, pseudonimo, nacionalidade
VALUES ('Carl Edward Sagan', 'Carl Sagan', 'EUA'),
       ('Fiódor Mikhailovitch Dostoiévski', 'Dostoiévski', 'Russia'),
	   ('Aldous Huxley', 'Huxley', 'Inglaterra'),
	   ('John Anthony Burgess Wilson', 'Anthony Burgess', 'Inglaterra'),
	   ('Isaac Asimov', 'Isaac Asimov', 'Russia'),
	   ('William Peter Blatty', 'William Peter Blatty', 'EUA'),
	   ('Alan Moore', 'Alan Moore', 'Inglaterra'),
	   ('Arthur Spiegelman', 'Art Spiegelman', 'Suécia'),
	   ('Alejandro Jodorowsky Prullansky', 'Jodorowsky', 'Chile'),
	   ('Katsuhiro Otomo', 'Katsuhiro Otomo', 'Japão'),
	   ('Frank Miller', 'Frank Miller', 'EUA'),
	   ('Neil Richard MacKinnon Gaiman', 'Neil Gaiman', 'Inglaterra'),
	   ('Osamu Tezuka', 'Osamu Tezuka', 'Japão'),
	   ('William Erwin Eisner', 'Will Eisner', 'EUA'),
	   ('Héctor Germán Oesterheld', 'Oesterheld', 'Argentina'),
	   ('Roy Thomas', 'Roy Thomas', 'EUA'),
	   ('Stanley Martin Lieber', 'Stan Lee', 'EUA'),
	   ('Stephen John Ditko', 'Steve Ditko', 'EUA'),
	   ('Mauricio Araújo de Sousa', 'Mauricio de Sousa', 'Brasil'),
	   ('Arnaldo Angeli Filho', 'Angeli', 'Brasil'),
	   ('Laerte Coutinho', 'Laerte', 'Brasil'),
	   ('Glauco Villas Boas', 'Glauco', 'Brasil'),
	   ('Robert Crumb', 'Robert Crumb', 'EUA'),
	   ('Hiroshi Hirata', 'Hiroshi Hirata', 'Japão'),
	   ('Junji Ito', 'Junji Ito', 'Japão'),
	   ('Paolo Eleuteri Serpieri', 'Paolo Serpieri', 'Italia'),
	   ('Philippe Druillet', 'Druillet', 'França'),
	   ('Umberto Eco', 'Umberto Eco', 'Itália'),
	   ('José de Sousa Saramago', 'José Saramago', 'Portugal'),
	   ('Ursula Kroeber Le Guin', 'Ursula Le Guin', 'EUA'),
	   ('Chaya Pinkhasivna Lispector', 'Clarice Lispector', 'Ucrânia'),
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
	   ('Mariane Gusmão', 0)

-- SELECT * FROM Colorista
GO

--------------------------------------------------------------------------------------------------
INSERT INTO Produto
-- titulo, genero, editora, anoPublicacao, capaDura, sinopse, precoCusto
VALUES ('O mundo assombrado pelos demônios', 
        'Ciência', 
        'Companhia das Letras', 
        1995, 
        0, 
		'Assombrado com as explicações pseudocientíficas e místicas que ocupam cada vez mais os espaços dos meios de comunicação, Carl Sagan reafirma o poder positivo e benéfico da ciência e da tecnologia para iluminar os dias de hoje e recuperar os valores da racionalidade. Como todos os livros do autor, O mundo assombrado pelos demônios está cheio de informações surpreendentes, transmitidas com humor e graça. Seus ataques muitas vezes divertidos à falsa ciência, às concepções excêntricas e aos irracionalismos do momento são acompanhados por lembranças da infância, quando seus pais o colocaram em contato pela primeira vez com os dois modelos de pensamento fundamentais para o método científico: o ceticismo e a admiração.',
        30.00,
		0.1),

       ('Admirável mundo novo', 
        'Ficção', 
        'Biblioteca Azul', 
        1932, 
        0, 
		'Em uma sociedade organizada segundo princípios estritamente científicos, Bernard Marx, um psicólogo, sente-se inadequado quando se compara aos outros seres de sua casta. Ao descobrir uma “reserva histórica” que preserva costumes de uma sociedade anterior (muito semelhante à do leitor) Bernard vai perceber as diferenças entre esta civilização e a sua e a partir de um sentimento de inconformismo ele desafiará o mundo. A história de Bernard se passa em um ambiente em que a literatura, a música e o cinema só têm a função de solidificar a alienação; um universo que louva o avanço da técnica, a produção em série, a uniformidade contra a diversidade.',
        39.00,
		0.1),

       ('Laranja Mecânica: Edição Comemorativa de 50 anos', 
        'Ficção', 
        'Aleph', 
        1962, 
        1, 
		'Publicado pela primeira vez em 1962, e imortalizado 9 anos depois pelo filme de Stanley Kubrick, Laranja Mecânica não só está entre os clássicos eternos da ficção como representa um marco na cultura pop do século 20. Meio século depois, a perturbadora história de Alex membro de uma gangue de adolescentes que é capturado pelo Estado e submetido a uma terapia de condicionamento social continua fascinando, e desconcertando, leitores mundo afora. Esta edição especial de 50 anos em capa dura e impressa em duas cores (preto e laranja).',
        80.00,
		0.1),

       ('Trilogia da Fundação - Edição de luxo', 
        'Ficção', 
        'Aleph', 
        1951, 
        1, 
		'A humanidade está em risco. Uma ciência revolucionária prevê uma longa e inevitável era de trevas e barbárie. Para evitar que isso aconteça, o chamado plano Seldon é colocado em prática ao longo de séculos, e percorre a história da galáxia, prevendo conflitos de nossa civilização. Mas poderá o comportamento humano obedecer a um padrão científico?',
        120.00,
		0.1),

       ('O Exorcista', 
        'Horror', 
        'Harper Collins', 
        1971, 
        0, 
		'Um clássico do terror com mais de 13 milhões de exemplares vendidos. Uma obra que mudou a cultura pop para sempre, O exorcista é o livro que deu origem ao maior filme de terror do século XX. Quatro décadas após chocar o mundo inteiro, a obra-prima de William Peter Blatty permanece uma metáfora moderna do combate entre o sagrado e o profano, em um dos romances mais macabros já escritos.',
        45.00,
		0.1),

       ('Crime e castigo', 
        'Literatura', 
        'Editora 34', 
        1866, 
        0, 
		'Raskólnikov, um jovem estudante, pobre e desesperado, perambula pelas ruas de São Petersburgo até cometer um crime que tentará justificar por uma teoria: grandes homens, como César ou Napoleão, foram assassinos absolvidos pela História. Este ato desencadeia uma narrativa labiríntica que arrasta o leitor por becos, tabernas e pequenos cômodos, povoados de personagens que lutam para preservar sua dignidade contra as várias formas da tirania.',
        63.00,
		0.1),

       ('Cosmos', 
        'Astronomia', 
        'Companhia das Letras', 
        1980, 
        0, 
		'Cosmos retraça 14 bilhões de anos de evolução cósmica, explorando tópicos como a origem da vida, o cérebro humano, hieróglifos egípcios, missões espaciais, a morte do sol, a evolução das galáxias e as forças e indivíduos que ajudaram a moldar a ciência moderna. Numa prosa transparente, Carl Sagan revela os segredos do planeta azul habitado por uma forma de vida que apenas começa a descobrir sua própria identidade e a se aventurar no vasto oceano do espaço sideral. Aqui, o tratamento dos temas científicos está sempre imbricado com outros campos de estudo tradicionais, como história, antropologia, arte e filosofia.',
        49.00,
		0.1),

       ('Os irmãos Karamázov', 
        'Literatura', 
        'Editora 34', 
        1880, 
        1, 
		'Último romance de Dostoiévski, Os irmãos Karamázov representa uma síntese de toda sua produção e é tido por muitos como sua obra-prima. Um marco da literatura universal, influenciou pensadores como Nietzsche e Freud - que o considerava "o maior romance já escrito" - e sucessivas gerações de escritores em todo o mundo.',
        100.00,
		0.1),

       ('Pálido ponto azul', 
        'Astronomia', 
        'Companhia das Letras', 
        1994, 
        0, 
		'"Um dos grandes astrônomos do século XX, Carl Sagan revela como descobertas científicas alteraram a percepção de quem somos e do lugar que ocupamos no Universo. Edição inclui caderno de imagens. Temos algum tipo de privilégio em relação a outros corpos celestes? Qual deve ser nossa postura perante a imensidão do universo? Faz sentido investir em missões aeroespaciais incertas enquanto ainda somos incapazes de solucionar os problemas que nos afligem todos os dias? Em Pálido ponto azul, Carl Sagan esmiúça essas perguntas e continua a revolucionária investigação sobre o tempo e o espaço iniciada em Cosmos, uma das mais importantes obras de divulgação científica do século XX.',
        45.00,
		0.1),

       ('V de Vingança', 
        'Graphic Novels', 
        'Panini', 
        2006, 
        1, 
		'Uma poderosa e aterradora história sobre a perda da liberdade e cidadania em um mundo totalitário bem possível, V DE VINGANÇA permanece como uma das maiores obras dos quadrinhos e o trabalho que revelou ao mundo seus criadores, Alan Moore e David Lloyd. Encenada em uma Inglaterra de um futuro imaginário que se entregou ao fascismo, esta arrebatadora história captura a natureza sufocante da vida em um estado policial autoritário e a força redentora do espírito humano que se rebela contra esta situação. Obra de surpreendente clareza e inteligência, V DE VINGANÇA traz inigualável profundidade de caracterizações e verossimilhança, em um audacioso conto de opressão e resistência.',
        145.00,
		0.1),

       ('Maus', 
        'Graphic Novels', 
        'Panini', 
        1991, 
        0, 
		'Nas tiras, os judeus são desenhados como ratos e os nazistas ganham feições de gatos; poloneses não-judeus são porcos e americanos, cachorros. Esse recurso, aliado à ausência de cor dos quadrinhos, reflete o espírito do livro: trata-se de um relato incisivo e perturbador, que evidencia a brutalidade da catástrofe do Holocausto. Spiegelman, porém, evita o sentimentalismo e interrompe algumas vezes a narrativa para dar espaço a dúvidas e inquietações. É implacável com o protagonista, seu próprio pai, retratado como valoroso e destemido, mas também como sovina, racista e mesquinho. De vários pontos de vista, uma obra sem equivalente no universo dos quadrinhos e um relato histórico de valor inestimável.',
        45.00,
		0.1),

       ('Incal', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2021, 
        1, 
		'Em um mundo distópico e degenerado, John Difool, um detetive particular de quinta categoria, vê sua vida virar de cabeça para baixo quando encontra um antigo artefato místico chamado "Incal". Em pouco tempo, ele se vê envolvido num conflito épico entre o Metabarão, o maior guerreiro da galáxia, e os descomunais poderes científicos do Tecnopapa. Movido por situações cada vez inusitadas, Difool terá que lutar não só pela sua sobrevivência, mas pela de todo o universo. Incal, uma das obras mais aclamadas do mundo, é fruto da mente de dois gênios que revolucionaram os quadrinhos e o cinema nos anos 1970 e 1980.',
        90.00,
		0.1),

       ('Watchmen - Edição Definitiva', 
        'Graphic Novels', 
        'Panini', 
        2009, 
        1, 
		'O ano é 1985. Os Estados Unidos são uma nação totalitária e fechada, isolada do resto do mundo. A presença de arsenais nucleares e dos chamados super-heróis mantém um certo equilíbrio entre as forças do planeta... até que o relógio do fim do mundo começa a marchar para a meia-noite e a raça humana para um abismo sem-fim. A sombria e inigualável trama tem início com ilusões paranóicas do supostamente insano herói Rorschach, um dos Watchmen que patrulhavam os EUA décadas atrás. Mas ele estaria realmente insano ou na verdade teria descoberto uma sórdida conspiração para assassinar super-heróis -- ou, pior ainda, milhões de civis inocentes? Fugindo da lei, Rorschach junta-se a ex-companheiros do passado em uma desesperada tentativa de salvar suas próprias vidas... e o que acabam descobrindo, além de abalar suas estruturas, poderá alterar o próprio destino do planeta Terra!',
        108.00,
		0.1),

       ('Akira - Vol. 1', 
        'Mangá', 
        'JBC', 
        2015, 
        0, 
		'Após atropelar uma criança de aparência estranha, Tetsuo Shima (o melhor amigo de Kaneda), começa a sentir algumas reações anormais. Isso acaba chamando a atenção do governo que está projetando diversas experiências secretas e acabam sequestrando Tetsuo. Nesta aventura cheia de ficção, Kaneda entra em cena para salvar o amigo, enquanto uma terrível e monstruosa entidade ameaça despertar.',
        60.00,
		0.1),

       ('Akira - Vol. 2', 
        'Mangá', 
        'JBC', 
        2016, 
        0, 
		'Tetsuo renasce como Número 41, com um poder maior do que Kaneda ou o governo poderiam imaginar. Depois de ingerir a cápsula roubada, escapa do controle do Coronel e ataca a fortaleza escondida embaixo do Estádio Olímpico. Enquanto isso, Miyako, fundadora de uma nova religião, prevê uma grande catástrofe, provocada pelo despertar de AKIRA. O que é AKIRA, o maior segredo da nação?!',
        50.00,
		0.1),

       ('Akira - Vol. 3', 
        'Mangá', 
        'JBC', 
        2017, 
        0, 
		'Kaneda e Kei conseguem escapar da base secreta subterrânea, levando com eles um misterioso garoto com o número 28 na palma da mão. Mal sabiam eles que esse indivíduo era AKIRA, o maior segredo da nação, que tinha despertado!! A disputa pela posse do garoto agora ocorre em três frentes: de um lado, a guerrilha comandada por Nezu; do outro, o Exército sob as ordens do Coronel; e por último, a seita da sacerdotiza Miyako. Quem o tiver em mãos obterá um grande poder ou…?! ',
        55.00,
		0.1),

       ('Antes Do Incal', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2021, 
        1, 
		'Chegou a hora de acompanhar as aventuras do jovem John Difool antes de se tornar o mais famoso anti-herói da ficção científica! Esse é o início da jornada épica que transformou o famigerado detetive de classe “R” no homem que mudaria o destino de todo o cosmo. Neste segundo volume da coleção TODO INCAL, testemunhamos John em busca de suas origens enquanto enfrenta perigosos conflitos e uma grande conspiração, seu primeiro encontro com Deepo e a aparição de personagens memoráveis, como Metabarão e Diavaloo',
        90.00,
		0.1),

       ('Akira - Vol. 4', 
        'Mangá', 
        'JBC', 
        2018, 
        0, 
		'A profecia de Miyako havia sido realizada. Uma tragédia envolvendo Takashi e Akira causa o despertar do Nº 28, destruindo toda Neo-Tokyo. Os sobreviventes observavam incrédulos as ruínas do que um dia foi a capital do Japão… 42 dias depois da catástrofe causada por Akira, na área oeste das ruínas de Neo-Tokyo, havia surgido uma potência chamada de Grande Império de Tokyo, no qual Akira era idolatrado como o “Grande Despertado”, e Tetsuo imperava com demonstrações públicas de seu poder. Qual o rumo que o Japão irá tomar?!',
        60.00,
		0.1),

       ('Akira - Vol. 5', 
        'Mangá', 
        'JBC', 
        2019, 
        0, 
		'A cada novo despertar, Tetsuo se aproxima mais ainda do poder de Akira! E após sobreviver a todas essas situações caóticas, Kaneda também volta à linha de combate, dando início à batalha por Akira, em um cenário de ruínas que beira o verdadeiro caos!',
        50.00,
		0.1),

       ('Akira - Vol. 6', 
        'Mangá', 
        'JBC', 
        2020, 
        0, 
		'Tetsuo sofre uma transformação bizarra e perde o controle de seu “poder”. Para tentar derrotá-lo, a equipe de operações especiais do Exército, o Coronel e os remanescentes dos companheiros de Kaneda agem cada um de seu jeito para alcançar seu objetivo…! O Império se encontra em estado de alerta geral!! A tensão chega ao ápice na gigantesca ruína do que um dia foi Neo-Tokyo e a intensa saga por trás de AKIRA está para encerrar',
        50.00,
		0.1),

       ('Incal Final', 
        'Graphic Novels', 
        'Pipoca e Nanquim', 
        2022, 
        1, 
		'O famoso e famigerado detetive John Difool e seu fiel companheiro Deepo são involuntariamente arremessados em uma nova missão para salvar o Universo, enquanto seu mundo enfrenta a ameaça de um vírus metálico que devora tudo. Incal Final marca o retorno do visionário roteirista Jodorowsky à épica mitologia que criou ao lado de Moebius no início dos anos 1980.',
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
	   ('cHEGMF6UPK', 'transportadora', '12/04/2023 07:00:00', 'Rápido Express'),
	   ('YgrQfEDRbu', 'transportadora', '12/04/2023 08:00:00', 'LogExpress'),
	   ('n5uZrg7Zln', 'correios', '12/04/2023 08:00:00', NULL),
	   ('qcYqsTkKR8', 'transportadora', '12/04/2023 08:00:00', 'Rápido Express'),
	   ('MrrPAAR3rX', 'correios', '12/04/2023 13:00:00', NULL),
	   ('65c7RO95dx', 'correios', '13/04/2023 07:00:00', NULL),
	   ('WKSo5akEmF', 'transportadora', '13/04/2023 13:00:00', 'LogExpress'),
	   ('2hFKLe0rDU', 'transportadora', '13/04/2023 13:00:00', 'Rápido Express'),
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