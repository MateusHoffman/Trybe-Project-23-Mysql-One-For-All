SELECT
  COUNT(song_id) cancoes,
  (SELECT COUNT(artist_id) FROM SpotifyClone.artist) artistas,
  COUNT(DISTINCT album_id) albuns
FROM SpotifyClone.songs
