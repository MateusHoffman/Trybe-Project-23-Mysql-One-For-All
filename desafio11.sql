SELECT
	song_name nome_musica,
    CASE
      WHEN (so.song_name LIKE '%Bard%') THEN REPLACE(so.song_name,'Bard', 'QA')
      WHEN (so.song_name LIKE '%Amar%') THEN REPLACE(so.song_name, 'Amar', 'Code Review')
      WHEN (so.song_name LIKE '%Pais%') THEN REPLACE(so.song_name, 'Pais', 'Pull Requests')
      WHEN (so.song_name LIKE '%SOUL%') THEN REPLACE(so.song_name, 'SOUL', 'CODE')
      WHEN (so.song_name LIKE '%SUPERSTAR%') THEN REPLACE(so.song_name, 'SUPERSTAR', 'SUPERDEV')
	END novo_nome
FROM SpotifyClone.songs so
	HAVING novo_nome <> nome_musica
ORDER BY nome_musica DESC
