--Задание 1

INSERT INTO artists (artist_name)
VALUES ('Eminem');
INSERT INTO artists (artist_name)
VALUES ('Katy Perry');
INSERT INTO artists (artist_name)
VALUES ('The Offspring');
INSERT INTO artists (artist_name)
VALUES ('Sum 41');
INSERT INTO artists (artist_name)
VALUES ('The Prodigy');
INSERT INTO artists (artist_name)
VALUES ('Lady Gaga');

INSERT INTO genres (genre_name)
VALUES ('Electronic');
INSERT INTO genres (genre_name)
VALUES ('Rock');
INSERT INTO genres (genre_name)
VALUES ('Punk');
INSERT INTO genres (genre_name)
VALUES ('Rap');
INSERT INTO genres (genre_name)
VALUES ('Pop');

INSERT INTO albums (album_name, album_year)
VALUES ('Let the Bad Times Roll', 2021);
INSERT INTO albums (album_name, album_year)
VALUES ('No Tourists', 2018);
INSERT INTO albums (album_name, album_year)
VALUES ('Order in Decline', 2019);
INSERT INTO albums (album_name, album_year)
VALUES ('Smile', 2020);
INSERT INTO albums (album_name, album_year)
VALUES ('Chromatica', 2020);
INSERT INTO albums (album_name, album_year)
VALUES ('Kamikaze', 2018);

INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('This Is Not Utopia', 158, 1);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Take my hand', 72, 1);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Need Some', 163, 2);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Give Me a Signal', 241, 2);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Turning Away', 230, 2);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Catching Fire', 241, 3);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Never Really Over', 223, 3);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('What Makes a Woman', 131, 4);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('My Choice', 60, 4);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Babylon', 161, 5);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('The Ringer', 337, 6);
INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('Venom', 269, 6);

INSERT INTO collections (collection_name, collection_year)
VALUES ('Pop Fusion', 2021);
INSERT INTO collections (collection_name, collection_year)
VALUES ('Special Delivery', 2022);
INSERT INTO collections (collection_name, collection_year)
VALUES ('A New Horizon', 2020);
INSERT INTO collections (collection_name, collection_year)
VALUES ('Ambient Vibes', 2019);

INSERT INTO artist_genres (artist_id, genre_id)
VALUES (1, 4);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (2, 5);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (3, 2);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (4, 3);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (4, 2);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (5, 1);
INSERT INTO artist_genres (artist_id, genre_id)
VALUES (6, 5);

INSERT INTO artist_albums (artist_id, album_id)
VALUES (1, 6);
INSERT INTO artist_albums (artist_id, album_id)
VALUES (2, 4);
INSERT INTO artist_albums (artist_id, album_id)
VALUES (3, 1);
INSERT INTO artist_albums (artist_id, album_id)
VALUES (4, 3);
INSERT INTO artist_albums (artist_id, album_id)
VALUES (5, 2);
INSERT INTO artist_albums (artist_id, album_id)
VALUES (6, 5);

INSERT INTO track_collections (collection_id, track_id)
VALUES (1, 7);
INSERT INTO track_collections (collection_id, track_id)
VALUES (1, 2);
INSERT INTO track_collections (collection_id, track_id)
VALUES (1, 5);
INSERT INTO track_collections (collection_id, track_id)
VALUES (2, 9);
INSERT INTO track_collections (collection_id, track_id)
VALUES (2, 1);
INSERT INTO track_collections (collection_id, track_id)
VALUES (2, 12);
INSERT INTO track_collections (collection_id, track_id)
VALUES (2, 5);
INSERT INTO track_collections (collection_id, track_id)
VALUES (3, 1);
INSERT INTO track_collections (collection_id, track_id)
VALUES (3, 7);
INSERT INTO track_collections (collection_id, track_id)
VALUES (3, 10);
INSERT INTO track_collections (collection_id, track_id)
VALUES (3, 3);
INSERT INTO track_collections (collection_id, track_id)
VALUES (4, 6);
INSERT INTO track_collections (collection_id, track_id)
VALUES (4, 8);