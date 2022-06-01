#1

SELECT genre_name, COUNT(singer_id) FROM genres g
JOIN genre_singer gs ON g.genre_id = gs.genre_id
GROUP BY g.genre_name
ORDER BY count DESC;

#2

SELECT album_name, album_year, COUNT(track_id) FROM albums a
JOIN tracks t ON a.album_id = t.album_id
WHERE album_year between 2019 and 2020
GROUP BY album_name, album_year;

#3

SELECT album_name, AVG(duration) FROM tracks t
JOIN albums a ON t.album_id = a.album_id
GROUP BY a.album_id;

#4

SELECT singer_name FROM singers s
JOIN singersalbums sa ON s.singer_id = sa.singer_id
JOIN albums a ON sa.album_id = a.album_id
WHERE singer_name NOT IN (SELECT singer_name FROM singers s
JOIN singersalbums sa ON s.singer_id = sa.singer_id
JOIN albums a ON sa.album_id = a.album_id
WHERE album_year = 2020)
GROUP BY singer_name;

#5

SELECT pl_name FROM playlists pl
JOIN playlist_track pt ON pl.pl_id = pt.playlist_id
JOIN tracks t ON pt.track_id = t.track_id 
JOIN albums a ON t.album_id = a.album_id
JOIN singersalbums sa ON a.album_id = sa.album_id 
JOIN singers s ON sa.singer_id = s.singer_id
WHERE singer_name = 'Kygo';

#6

SELECT album_name, COUNT(genre_id) FROM albums a
JOIN singersalbums sa ON a.album_id = sa.album_id 
JOIN singers s ON sa.singer_id = s.singer_id
JOIN genre_singer gs ON s.singer_id = gs.singer_id
GROUP BY a.album_id
HAVING COUNT(genre_id) > 1;

#7

SELECT track_name FROM tracks t
LEFT JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE pt_id is NULL;

#8

SELECT singer_name, duration FROM tracks t
JOIN albums a ON t.album_id = a.album_id
JOIN singersalbums sa ON a.album_id = sa.album_id
JOIN singers s ON sa.singer_id = s.singer_id
WHERE duration=(SELECT MIN(duration) FROM tracks);

#9

SELECT album_name, COUNT(track_id) FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY album_name
HAVING COUNT(track_id) = (SELECT MIN(count) FROM (SELECT COUNT(track_id) count FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY album_name) count);