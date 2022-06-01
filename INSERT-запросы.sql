INSERT INTO genres(genre_name)
VALUES
	('Rock'),
	('Hard Rock'),
	('Electronic'),
	('Pop Music'),
	('Hip-Hop/Rap');

INSERT INTO singers(singer_name)
VALUES
	('Eminem'),
	('Snoop Doggy Dogg'),
	('Guns N Roses'),
	('Jack Johnson'),
	('Adele'),
	('Ed Sheeran'),
	('Kygo'),
	('Avicii');
	

INSERT INTO genre_singer(singer_id, genre_id)
VALUES	
	(1, 5),
	(2, 5)
	(3, 3),
	(4, 1),
	(5, 4),
	(6, 4),
	(7, 2),
	(8, 2);


INSERT INTO albums(album_name, album_year)
VALUES
	('Recovery', 2010),
	('High', 2016),
	('Appetite for Destruction', 1987),
	('On and On', 2003),
	('30', 2021),
	('Divide', 2014),
	('Kids in Love', 2017),
	('True', 2013),
	('Golden Hour', 2020),
	('Kamikaze', 2019)
	('Stories', 2015);


INSERT INTO singersalbums(album_id, singer_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 7),
	(10, 1),
	(11, 8)
	(9, 6);


INSERT INTO tracks(album_id, track_name, duration)
VALUES	
	(1, 'Cold Wind Blows', 304),
	(1, 'On Fire', 214),
	(2, 'Fucc Day', 236 ),
	(2, 'Back Up', 269 ),
	(3, 'Its So Easy', 203),
	(3, 'Welcome to the Jungle', 273),
	(4, 'Times Like These', 142),
	(4, 'Traffic in the Sky', 170),
	(5, 'Strangers by Nature', 182),
	(5, 'Easy on Me', 224),
	(6, 'Eraser', 228),
	(6, 'Castle on the Hill', 261),
	(7, 'Never Let You Go', 233),
	(7, 'Sunrise', 215),
	(8, 'Wake Me Up', 249),
	(8, 'Hey Brother', 254),
	(10, 'The Ringer', 338),
	(10, 'Lucky You', 245),
	(9, 'The Truth', 194),
	(9, 'Lose Somebody', 200),
	(11, 'Waiting For Love', 230);

INSERT INTO playlists(pl_name, pl_year)
VALUES	
	('Cool', 2015),
	('Nice', 2016),
	('Love', 2017),
	('For You', 2018),
	('Favorites', 2019),
	('My songs', 2020),
	('Back to the Future', 2021),
	('New', 2022);

INSERT INTO playlist_track(playlist_id, track_id)
VALUES	
	(1, 1),
	(1, 16),
	(2, 2),
	(2, 15),
	(3, 3),
	(3, 14),
	(4, 4),
	(4, 13),
	(5, 5),
	(5, 12),
	(6, 6),
	(6, 11),
	(7, 7),
	(7, 10),
	(8, 8),
	(8, 9);


	
