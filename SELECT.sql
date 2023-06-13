SELECT name, duration_song
  FROM tracks
 ORDER BY duration_song DESC
 LIMIT 1;

SELECT name
  FROM tracks
 WHERE duration_song > 210;

SELECT title
  FROM compilations
 WHERE release_year BETWEEN '2018-01-01' AND '2020-01-01';

SELECT name
  FROM performers
 WHERE name LIKE '_';

SELECT name
  FROM tracks
 WHERE name LIKE '%мой%'
    OR name LIKE '%my%';

SELECT music_ganres."name", COUNT(performers_genres.performer_id)
  FROM performers_genres
  JOIN music_ganres ON performers_genres.genre_id = music_ganres.genre_id 
 GROUP BY  music_ganres."name";

SELECT albums.title, albums.release_year, count(tracks.album_id) 
  FROM albums
  JOIN tracks ON albums.album_id = tracks.album_id
 WHERE albums.release_year BETWEEN '2018-01-01' AND '2020-01-01'
 GROUP BY albums.title, albums.release_year;

SELECT albums.title, AVG(tracks.duration_song)
  FROM albums
  JOIN tracks ON albums.album_id  = tracks.album_id
 GROUP BY albums.title;

SELECT performers.name, albums.release_year  
  FROM performers
  JOIN performers_albums ON performers.performer_id  = performers_albums.performer_id 
  JOIN albums ON performers_albums.album_id = albums.album_id 
 WHERE albums.release_year != '2020-01-01';

SELECT compilations.title 
  FROM compilations
  JOIN compilations_tracks ON compilations.compilation_id = compilations_tracks.compilation_id
  JOIN tracks ON compilations_tracks.track_id = tracks.track_id
  JOIN albums ON tracks.album_id = albums.album_id
  JOIN performers_albums ON albums.album_id = performers_albums.album_id
  JOIN performers ON performers.performer_id  = performers_albums.performer_id
 WHERE performers.name = 'Электрофорез'
 GROUP BY compilations.title
 ORDER BY compilations.title;