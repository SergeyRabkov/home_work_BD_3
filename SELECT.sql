SELECT name, duration_song
  FROM tracks
 ORDER BY duration_song DESC
 LIMIT 1;

SELECT name
  FROM tracks
 WHERE duration_song > 209;

SELECT title
  FROM compilations
 WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name
  FROM performers
 WHERE name NOT LIKE '% %';

SELECT name
  FROM tracks
 WHERE name ILIKE 'my %'
    OR name ILIKE '% my'
    OR name ILIKE '% my %'
    OR name ILIKE 'my'
    OR name ILIKE 'мой %'
    OR name ILIKE '% мой'
    OR name ILIKE '% мой %'
    OR name ILIKE 'мой'; 

SELECT music_genres."name", COUNT(performers_genres.performer_id)
  FROM performers_genres
  JOIN music_genres ON performers_genres.genre_id = music_genres.genre_id 
 GROUP BY  music_genres."name";

SELECT count(track_id)
  FROM tracks
  JOIN albums ON albums.album_id = tracks.album_id
 WHERE albums.release_year BETWEEN '2019-01-01' AND '2020-12-31';

SELECT albums.title, AVG(tracks.duration_song)
  FROM albums
  JOIN tracks ON albums.album_id  = tracks.album_id
 GROUP BY albums.title;

SELECT name  
  FROM performers
 WHERE name NOT IN 
       (SELECT name
          FROM performers
          JOIN performers_albums ON performers.performer_id  = performers_albums.performer_id 
          JOIN albums ON performers_albums.album_id = albums.album_id 
         WHERE albums.release_year = '2020-12-31');

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
