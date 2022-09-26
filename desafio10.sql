SELECT
	so.song_name nome,
    COUNT(us.user_id) reproducoes
FROM SpotifyClone.history hi
	JOIN SpotifyClone.songs so ON hi.song_id = so.song_id
	JOIN SpotifyClone.users us ON hi.user_id = us.user_id AND (us.plan_id = 1 OR us.plan_id = 4)
    GROUP BY so.song_name
ORDER BY nome ASC
