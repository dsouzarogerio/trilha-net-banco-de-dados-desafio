-- 1 - Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM filmes; 

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano FROM filmes ORDER BY Ano; 

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM filmes WHERE Nome LIKE '%volta%futuro'; 

-- 4 - Buscar os filmes lançados em 1997

SELECT * FROM filmes WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT * FROM filmes WHERE Ano >= 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT * FROM filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente

SELECT Ano, count(*) Quantidade FROM filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome from filmes.atores WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome from filmes.atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero;
SELECT 
	f.Nome,
	g.Genero
FROM
	FilmesGenero fg
INNER JOIN filmes f ON
	f.Id = fg.IdFilme
INNER JOIN generos g ON
	fg.IdGenero = g.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT 
	f.Nome,
	g.Genero
FROM
	FilmesGenero fg
INNER JOIN filmes f ON
	f.Id = fg.IdFilme
INNER JOIN generos g ON
	fg.IdGenero = g.Id
WHERE g.Genero = 'Misterio';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel
FROM
	filmes f
INNER JOIN elencofilme e ON
	f.Id = e.IdFilme
INNER JOIN atores a ON
	a.Id = e.IdAtor;
