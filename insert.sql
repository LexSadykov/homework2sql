insert into artist(name)
values
	('Queen'),
	('2pac'),
	('Madonna'),
	('Алла Пугачёва');
	
insert into genre(name)
values
	('Rap'),
	('Rock'),
	('Pop');
	
insert into album(name, years)
values
	('A Night At The Opera', 1975),
	('2Pacalypse Now', 1991),
	('Like a Virgin', 1984);

insert into tracks(album_id, name, duration)
values
	(1, 'Im in Love with My Car', 185),
	(1, 'Bohemian Rhapsody', 355),
	(2, 'If My Homie Calls', 258),
	(2, 'Brenda Got a Baby', 235),
	(3, 'Material Girl', 244),
	(3, 'Angel', 237);

insert into collection(name, years)
values
	('Сборник 1', 2000),
	('Сборник 2', 2010),
	('Сборник 3', 2020),
	('Сборник 4', 2024);

insert into artistalbum(artist_id, album_id)
values
	(1, 1),
	(2, 2),
	(3, 3);

insert into genreartist(genre_id, artist_id)
values
	(1, 2),
	(2, 1),
	(3, 4),
	(3, 3);

insert into trackscollection(tracks_id, collection_id)
values
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 4);
	