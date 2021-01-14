CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title,
    author_id INTEGER,
    subgenre_id INTEGER
);

CREATE TABLE subgenres(
    id INTEGER PRIMARY KEY,
    name
);

CREATE TABLE authors(
    id INTEGER PRIMARY KEY,
    name
);

CREATE TABLE books(
    id INTEGER PRIMARY KEY,
    title,
    year INTEGER,
    series_id INTEGER
);

CREATE TABLE characters(
    id INTEGER PRIMARY KEY,
    name,
    motto,
    species,
    author_id INTEGER
);

CREATE TABLE character_books(
    id INTEGER PRIMARY KEY,
    book_id INTEGER,
    character_id INTEGER
);