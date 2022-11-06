SELECT Nome, Ano 
FROM Filmes


SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano


SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'


SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000


SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


SELECT *
FROM Atores
WHERE Genero = 'M'


SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero


SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'


SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON ef.IdFilme = f.Id
INNER JOIN Atores a ON a.Id = ef.IdAtor
