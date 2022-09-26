SELECT
	ar.artist_name artista,
    al.album_name album
FROM SpotifyClone.albums al
	JOIN SpotifyClone.artist ar ON al.artist_id = ar.artist_id
    WHERE ar.artist_name = 'Elis Regina'
    ORDER BY ar.artist_name ASC
