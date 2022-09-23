SELECT
	-- DISTINCT (SELECT user FROM SpotifyClone.users us WHERE hi.user_id = us.user_id) usuario,
    DISTINCT us.user usuario,
    COUNT(hi.song_id) qt_de_musicas_ouvidas,
    ROUND(SUM(so.song_seconds/60), 2) total_minutos
FROM SpotifyClone.history hi
	JOIN SpotifyClone.songs so ON hi.song_id = so.song_id
    
    JOIN SpotifyClone.users us ON hi.user_id = us.user_id
    
	GROUP BY hi.user_id
    ORDER BY us.user
