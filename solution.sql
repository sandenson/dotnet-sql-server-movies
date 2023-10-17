-- 1

SELECT Nome, Ano FROM Filmes

-- 2 - Enunciado

SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- 2 - Imagem

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

-- 3 - Enunciado

SELECT * FROM Filmes WHERE Nome LIKE 'de volta para o futuro'

-- 3 - Imagem

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE 'de volta para o futuro'

-- 4 - Enunciado

SELECT * FROM Filmes WHERE Ano = 1997

-- 4 - Imagem

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- 5 - Enunciado

SELECT * FROM Filmes WHERE Ano > 2000

-- 5 - Imagem

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000

-- 6 - Enunciado

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 6 - Imagem

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 7

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

-- 8 - Enunciado

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'

-- 8 - Imagem

SELECT * FROM Atores WHERE Genero = 'M'

-- 9 - Enunciado

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 9 - Imagem

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10

SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

-- 11

SELECT F.Nome, G.Genero FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- 12

SELECT
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id