 -- 1
SELECT 
   Nome AS NomeDoFilme,
   Ano AS AnoDoLançamento
FROM Filmes


-- 2

SELECT 
 Nome AS NomeDoFilme,
 Ano AS AnoDoLançamento,
 Duracao AS DuraçãoDoFilme
FROM Filmes
ORDER BY AnoDoLançamento

-- 3

SELECT 
 Nome AS NomeDoFilme,
 Ano AS AnoDoLançamento,
 Duracao AS DuraçãoDoFilme
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4

SELECT 
 Nome AS NomeDoFilme,
 Ano AS AnoDoLançamento,
 Duracao AS DuraçãoDoFilme
FROM Filmes
WHERE Ano = 1997

-- 5
SELECT 
 Nome AS NomeDoFilme,
 Ano AS AnoDoLançamento,
 Duracao AS DuraçãoDoFilme
FROM Filmes
WHERE Ano > 2000

-- 6

SELECT 
 Nome AS NomeDoFilme,
 Ano AS AnoDoLançamento,
 Duracao AS DuraçãoDoFilme
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
  Ano,
  COUNT(*) AS Quantidade
  
 
FROM Filmes
GROUP BY Ano 
ORDER BY Quantidade DESC

-- 8
SELECT Id,
  PrimeiroNome AS Nome,
  UltimoNome AS Sobrenome,
  Genero
 FROM Atores
 WHERE Genero = 'M'

 -- 9

SELECT Id,
  PrimeiroNome AS Nome,
  UltimoNome AS Sobrenome,
  Genero
 FROM Atores
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome

 -- 10

 SELECT 
  Nome,
  Genero
FROM FilmesGenero
INNER JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT 
  Nome,
  Genero
FROM FilmesGenero
INNER JOIN Filmes
ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- 12
SELECT 
  Nome AS NomeDoFilme,
 PrimeiroNome AS Nome,
 UltimoNome AS Sobrenome,
 Papel
FROM ElencoFilme
INNER JOIN Filmes
ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores
ON ElencoFilme.IdAtor = Atores.Id
 