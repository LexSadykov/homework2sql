create table if not exists genre (
	id SERIAL primary key,
	name VARCHAR(60) not null unique
);

create table if not exists artist (
	id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists album (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	years INTEGER not null check (years >= 1900)
);

create table if not exists tracks (
	id SERIAL primary key,
	album_id INTEGER references album(id),
	name VARCHAR(60) not null,
	duration INTEGER not null check (duration >= 1)
);

create table if not exists collection (
	id SERIAL primary key,
	name VARCHAR(60) not null,
	years INTEGER not null check (years >= 1900)
);

create table if not exists genreArtist (
	genre_id INTEGER references genre(id),
	artist_id INTEGER references artist(id),
	constraint pk primary key (genre_id, artist_id)
);

create table if not exists artistAlbum (
	artist_id INTEGER references artist(id),
	album_id INTEGER references album(id),
	constraint pk2 primary key (artist_id, album_id)
);

create table if not exists tracksCollection (
	tracks_id INTEGER references tracks(id),
	collection_id INTEGER references collection(id),
	constraint pk3 primary key (tracks_id, collection_id)
);