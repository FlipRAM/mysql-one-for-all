SELECT COUNT(uh.user_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.user_history AS uh
ON u.user_id = uh.user_id
WHERE u.name = 'Bill';