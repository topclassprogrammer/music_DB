CREATE TABLE IF NOT EXISTS Genres(
	genre_id serial PRIMARY KEY,
	genre_name varchar(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS Artists(
	artist_id serial PRIMARY KEY,
	artist_name varchar(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS Artist_genres(
	PRIMARY KEY (genre_id, artist_id),
	artist_id int REFERENCES Artists(artist_id),
	genre_id int REFERENCES Genres(genre_id)
);
CREATE TABLE IF NOT EXISTS Albums(
	album_id serial PRIMARY KEY,
	album_name varchar(60) NOT NULL,
	album_year int NULL
);
CREATE TABLE IF NOT EXISTS Artist_albums(
	PRIMARY KEY (artist_id, album_id),
	artist_id int REFERENCES Artists(artist_id),
	album_id int REFERENCES Albums(album_id)	
);
CREATE TABLE IF NOT EXISTS Tracks(
	track_id serial PRIMARY KEY,
	track_name varchar(40) NOT NULL,
	track_length int NULL,
	album_id int REFERENCES Albums(album_id)
);
CREATE TABLE IF NOT EXISTS Collections(
	collection_id serial PRIMARY KEY,
	collection_name varchar(40) NOT NULL,
	collection_year int NULL
);
CREATE TABLE IF NOT EXISTS Track_collections(
	PRIMARY KEY (collection_id, track_id),
	collection_id int REFERENCES Collections(collection_id),
	track_id int REFERENCES Tracks(track_id)
);