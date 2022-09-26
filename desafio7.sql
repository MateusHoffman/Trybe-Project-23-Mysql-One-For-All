SELECT
	ar.artist_name artista,
    al.album_name album,
    COUNT(fo.artist_id) seguidores
FROM SpotifyClone.albums al
	JOIN SpotifyClone.artist ar ON al.artist_id = ar.artist_id
    JOIN SpotifyClone.followers fo ON al.artist_id = fo.artist_id
    GROUP BY al.album_id
	ORDER BY seguidores DESC, artista ASC, album ASC
