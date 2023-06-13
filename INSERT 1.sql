INSERT INTO performers (name) 
VALUES ('Ren'),
       ('The Beatles'),
       ('Электрофорез'),
       ('Twenty One Pilots'),
       ('Thirty Seconds to Mars'),
       ('A');

INSERT INTO music_ganres (name) 
VALUES ('Rap'),
       ('Pop'),
       ('Rock'),
       ('Synthpop'),
       ('Gospel');

INSERT INTO performers_genres (performer_id, genre_id) 
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (2, 3),
       (3, 4),
       (4, 1),
       (4, 3),
       (5, 3);

INSERT INTO albums (title, release_year) 
VALUES ('Freckled Angels', '2016-01-01 01:01:01.00000'),
       ('Sgt. Pepper’s Lonely Hearts Club Band', '1967-05-26 01:01:01.00000'),
       ('505', '2021-04-05 01:01:01.00000'),
       ('Trench', '2016-01-01 01:01:01.00000'),
       ('America', '2018-01-01 01:01:01.00000');

INSERT INTO performers_albums (performer_id, album_id) 
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5);

INSERT INTO tracks (album_id, name, duration_song) 
VALUES (1, 'make my way', 216),
       (1, 'Freckled Angels', 258),
       (2, 'Within You Without You', 305),
       (2, 'With a Little Help from My Friends', 162),
       (3, '505 (Легко сойти с ума)', 185),
       (3, 'Зло', 223),
       (4, 'My Blood', 229),
       (4, 'Cut My Lip', 283),
       (5, 'Rescue Me', 218),
       (5, 'Love Is Madness', 236);

INSERT INTO compilations (title, release_year) 
VALUES ('Greatest Hits', '1992-01-01 01:01:01.00000'),
       ('All-Time Greatest Hits', '2018-01-01 01:01:01.00000'),
       ('Rock Greatest Hits', '2019-01-01 01:01:01.00000'),
       ('Synthpop Greatest Hits', '2020-01-01 01:01:01.00000');

INSERT INTO compilations_tracks (compilation_id, track_id) 
VALUES (1, 3),
       (1, 4),
       (2, 2),
       (2, 9),
       (3, 7),
       (3, 9),
       (3, 10),
       (4, 5),
       (4, 6);