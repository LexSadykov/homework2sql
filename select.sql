SELECT duration, name FROM tracks
order by duration DESC, name
limit 1;

SELECT duration, name FROM tracks
where duration >= 210;

select name, years from collection
where years >= 2018 and years <= 2020;

select name from artist
where name not like '% %';

select name from tracks
where name like '%мой%' or name like '%My%';

SELECT genre.name AS genre_name, COUNT(genreartist.artist_id) AS artist_count FROM genre
JOIN genreartist ON genre.id = genreartist.genre_id
GROUP BY genre.name;

SELECT COUNT(tracks.id) AS track_count FROM tracks
JOIN album ON tracks.album_id = album.id
WHERE album.years BETWEEN 1990 AND 2020;

SELECT album.name AS album_name, AVG(tracks.duration) AS average_duration FROM tracks
JOIN album ON tracks.album_id = album.id
GROUP BY album.name;

SELECT artist.id, artist.name FROM artist
LEFT JOIN artistalbum ON artist.id = artistalbum.artist_id
LEFT JOIN album ON artistalbum.album_id = album.id
WHERE album.id IS NULL OR album.years != 2020;

SELECT DISTINCT collection.name AS collection_name
FROM collection
JOIN trackscollection ON collection.id = trackscollection.collection_id
JOIN tracks ON trackscollection.tracks_id = tracks.id
JOIN artistalbum ON tracks.album_id = artistalbum.album_id
JOIN artist ON artistalbum.artist_id = artist.id
WHERE artist.name = '2pac';