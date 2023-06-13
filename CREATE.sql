create table if not exists music_genres (
genre_id SERIAL      primary key,
name     VARCHAR(60) unique not null
);

create table if not exists performers (
performer_id SERIAL      primary key,
name         VARCHAR(60) not null
);

create table if not exists performers_genres (
id            SERIAL  PRIMARY KEY,
performer_id  INTEGER references performers(performer_id),
genre_id      INTEGER references music_Ganres(genre_id)
);

create table if not exists albums (
album_id     SERIAL      primary key,
title        VARCHAR(60) not null,
release_year date        not null
);

create table if not exists performers_albums (
id           SERIAL  PRIMARY KEY,
performer_id INTEGER references performers(performer_id),
album_id     INTEGER references albums(album_id)
);

create table if not exists tracks (
track_id      SERIAL      primary key,
album_id      SERIAL      references albums(album_id),
name          VARCHAR(60) not null,
duration_song integer     not null
);

create table if not exists compilations (
compilation_id SERIAL      primary key,
title          VARCHAR(60) not null,
release_year   date        not null
);

create table if not exists compilations_tracks (
id             SERIAL  PRIMARY KEY,
compilation_id INTEGER references compilations(compilation_id),
track_id       INTEGER references tracks(track_id)
);