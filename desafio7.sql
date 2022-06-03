SELECT art.name AS 'artista', alb.name AS 'album', COUNT(ua.user_id) AS 'seguidores'
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.user_artists AS ua
ON alb.artist_id = ua.artist_id
GROUP BY art.name, alb.name
ORDER BY seguidores DESC, art.name, alb.name;