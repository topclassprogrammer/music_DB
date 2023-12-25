--Задание 2

--1. Название и продолжительность самого длительного трека:
SELECT track_name, track_length l FROM tracks
ORDER BY l DESC
LIMIT 1;

--2. Название треков, продолжительность которых не менее 3,5 минут:
SELECT track_name FROM tracks
WHERE track_length >= 210;

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно:
SELECT collection_name FROM collections
WHERE collection_year BETWEEN 2018 AND 2020;

--4. Исполнители, чьё имя состоит из одного слова:
SELECT artist_name FROM artists
WHERE artist_name NOT LIKE '% %';

--5. Название треков, которые содержат слово «мой» или «my»:
SELECT track_name FROM tracks
WHERE track_name LIKE '%my%'
OR track_name LIKE '%мой%';

--Задание 3

--1. Количество исполнителей в каждом жанре:
SELECT genre_name n, COUNT(ag.artist_id) c FROM genres g  
JOIN artist_genres ag ON ag.genre_id = g.genre_id
GROUP BY n;

--2. Количество треков, вошедших в альбомы 2019–2020 годов:
SELECT COUNT(track_id) FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE a.album_year BETWEEN 2019 AND 2020;

--3. Средняя продолжительность треков по каждому альбому:
SELECT album_name n, AVG(track_length) l FROM albums a
JOIN tracks t ON a.album_id = t.album_id
GROUP BY n;

--4. Все исполнители, которые не выпустили альбомы в 2020 году:
SELECT artist_name FROM artists a
JOIN artist_albums aa ON aa.artist_id = a.artist_id
JOIN albums al ON aa.album_id = al.album_id
WHERE al.album_year != 2020;

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами):
SELECT collection_name cn FROM collections c
JOIN track_collections tc ON tc.collection_id = c.collection_id
JOIN tracks t ON tc.track_id = t.track_id
JOIN artist_albums a ON t.album_id = a.album_id
JOIN artists ar ON a.artist_id = ar.artist_id
WHERE ar.artist_name = 'Katy Perry';

--Задание 4(необязательное)

--1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра:
SELECT a.album_name an FROM albums a
JOIN artist_albums aa ON aa.album_id = a.album_id
JOIN artist_genres ag ON ag.artist_id = aa.artist_id
JOIN genres g ON ag.genre_id = g.genre_id
GROUP BY an
HAVING COUNT(ag.artist_id) > 1;

--2. Наименования треков, которые не входят в сборники:
SELECT track_name tn FROM tracks t
LEFT JOIN track_collections tc ON tc.track_id = t.track_id
GROUP BY tn
HAVING COUNT(tc.track_id) = 0;

--3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько:
SELECT artist_name an FROM artists a
JOIN artist_albums aa ON aa.artist_id = a.artist_id
JOIN tracks t ON aa.album_id = t.album_id
GROUP BY an
HAVING (SELECT MIN(track_length) FROM tracks) = MIN(t.track_length);

--4. Названия альбомов, содержащих наименьшее количество треков:
SELECT album_name an FROM albums a
JOIN tracks t ON t.album_id = a.album_id
GROUP BY an
ORDER BY COUNT(track_id)
LIMIT 1;