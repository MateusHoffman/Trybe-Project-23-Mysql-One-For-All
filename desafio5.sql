SELECT
	DISTINCT so.song_name cancao,
    COUNT(hi.song_id) reproducoes
FROM SpotifyClone.history hi
    JOIN SpotifyClone.songs so ON hi.song_id = so.song_id
   GROUP BY so.song_id
   ORDER BY reproducoes DESC, cancao ASC
   LIMIT 2
    
-- Quais são as 2 músicas mais tocadas 
-- 2 colunas
-- song AS cancao
-- quantidade de pessoas que já escutou a música AS reproducoes
-- ORDER BY número de reprodução DESC
-- Caso de empate ordene pelo nome ASC
