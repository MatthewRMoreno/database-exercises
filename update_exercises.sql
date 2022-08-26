UPDATE albums
SET sales_in_millions = (sales_in_millions * 10)
WHERE id > 0;
SELECT * FROM albums;
/*Output all of the albums from the albums table*/

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980
SELECT * FROM albums WHERE release_date < 1980;
/*Output all albums that have a release date before 1980*/

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'
/*Set Michael Jackson artist name to Peter Jackson?*/
SELECT name FROM albums WHERE artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';
/*Output all of the albums that had Michael Jackson as an artist*/