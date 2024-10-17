-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao FROM filmes;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
FROM filmes
WHERE Nome = 'De volta para o futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao 
FROM filmes
WHERE Ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao 
FROM filmes
WHERE Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao 
FROM filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Nome) AS Quantidade
FROM filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores
WHERE genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome 
FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.nome, Generos.Genero  FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.nome, Generos.Genero  
FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.id
WHERE Generos.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel  
FROM ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
