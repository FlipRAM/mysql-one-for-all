SELECT s.name AS 'nome_musica',
CASE
	WHEN s.name LIKE '%Streets' THEN REPLACE(s.name, 'Streets', 'Code Review')
	WHEN s.name LIKE '%Her Own' THEN REPLACE(s.name, 'Her Own', 'Trybe')
	WHEN s.name LIKE '%Inner Fire' THEN REPLACE(s.name, 'Inner Fire', 'Project')
	WHEN s.name LIKE '%Silly' THEN REPLACE(s.name, 'Silly', 'Nice')
  WHEN s.name LIKE '%Circus' THEN REPLACE(s.name, 'Circus', 'Pull Request')
  ELSE s.name
END AS 'novo_nome'
FROM SpotifyClone.songs AS s
WHERE
	s.name LIKE '%Streets'
  OR s.name LIKE '%Her Own'
  OR s.name LIKE '%Inner Fire'
  OR s.name LIKE '%Silly'
  OR s.name LIKE '%Circus'
ORDER BY novo_nome;