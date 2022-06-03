SELECT s.name AS 'cancao', COUNT(uh.song_id) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_history AS uh
ON s.song_id = uh.song_id
GROUP BY s.song_id
ORDER BY reproducoes DESC, s.name LIMIT 2;