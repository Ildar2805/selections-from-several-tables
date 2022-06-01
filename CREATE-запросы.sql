CREATE TABLE genres (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(40) NOT NULL
	);
CREATE TABLE singers (
	singer_id SERIAL PRIMARY KEY,
	singer_name VARCHAR(40) NOT NULL
	);
CREATE TABLE genre_singer ( 
	gs_id SERIAL PRIMARY KEY,
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	genre_id INTEGER NOT NULL REFERENCES genres(genre_id)
	);
CREATE TABLE albums (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	album_year INTEGER NOT NULL
	);
CREATE TABLE singersalbums (
	sa_id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES albums(album_id),
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id)
	);
CREATE TABLE tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES albums(id),
	track_name VARCHAR(40) NOT NULL,
	duration INTEGER NOT NULL
	);
CREATE TABLE playlists (
	pl_id SERIAL PRIMARY KEY,
	pl_name VARCHAR(40) NOT NULL,
	pl_year INTEGER NOT NULL
	);
CREATE TABLE playlist_track (
	pt_id SERIAL PRIMARY KEY,
	playlist_id INTEGER NOT NULL REFERENCES playlists(pl_id),
	track_id INTEGER NOT NULL REFERENCES tracks(track_id)
	);
