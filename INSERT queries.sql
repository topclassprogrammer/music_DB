--Задание 1

INSERT INTO artists (artist_name)
VALUES ('Eminem'),
	   ('Katy Perry'),
	   ('The Offspring'),
	   ('Sum 41'),
	   ('The Prodigy'),
	   ('Lady Gaga');

INSERT INTO genres (genre_name)
VALUES ('Electronic'),
	   ('Rock'),
	   ('Punk'),
	   ('Rap'),
	   ('Pop');

INSERT INTO albums (album_name, album_year)
VALUES ('Let the Bad Times Roll', 2021),
	   ('No Tourists', 2018),
	   ('Order in Decline', 2019),
	   ('Smile', 2020),
	   ('Chromatica', 2020),
	   ('Kamikaze', 2018);

INSERT INTO tracks (track_name, track_length, album_id)
VALUES ('This Is Not Utopia', 158, 1),
	   ('Take my hand', 72, 1),
	   ('Need Some', 163, 2),
	   ('Give Me a Signal', 241, 2),
	   ('Turning Away', 230, 2),
	   ('Catching Fire', 241, 3),
	   ('Never Really Over', 223, 3),
	   ('What Makes a Woman', 131, 4),
	   ('My Choice', 60, 4),
	   ('Babylon', 161, 5),
	   ('The Ringer', 337, 6),
	   ('Venom', 269, 6);

INSERT INTO collections (collection_name, collection_year)
VALUES ('Pop Fusion', 2021),
	   ('Special Delivery', 2022),
	   ('A New Horizon', 2020),
	   ('Ambient Vibes', 2019);

INSERT INTO artist_genres (artist_id, genre_id)
VALUES (1, 4),
	   (2, 5),
	   (3, 2),
	   (4, 3),
	   (4, 2),
	   (5, 1),
	   (6, 5);
	 
INSERT INTO artist_albums (artist_id, album_id)
VALUES (1, 6),
	   (2, 4),
	   (3, 1),
	   (4, 3),
	   (5, 2),
	   (6, 5);
	  
INSERT INTO track_collections (collection_id, track_id)
VALUES (1, 7),
	   (1, 2),
	   (1, 5),
	   (2, 9),
	   (2, 1),
	   (2, 12),
	   (2, 5),
	   (3, 1),
	   (3, 7),
	   (3, 10),
	   (3, 3),
	   (4, 6),
	   (4, 8);