SELECT s.name AS 'nome', COUNT(uh.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_history AS uh
ON s.song_id = uh.song_id
INNER JOIN SpotifyClone.users as u
ON u.user_id = uh.user_id
INNER JOIN SpotifyClone.plans as p
ON u.plan_id = p.plan_id
WHERE p.type = 'gratuito' OR p.type = 'pessoal'
GROUP BY s.name
ORDER BY s.name;