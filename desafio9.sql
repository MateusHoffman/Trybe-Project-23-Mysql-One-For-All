SELECT
	COUNT(hi.song_id) quantidade_musicas_no_historico
FROM SpotifyClone.history hi
	JOIN SpotifyClone.users us ON hi.user_id = us.user_id AND us.user = 'Barbara Liskov'
