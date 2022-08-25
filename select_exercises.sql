SELECT * FROM albums WHERE artist = 'Pink Floyd';
/*All instances of Pink Floys were grabbed from the table*/
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
/*It only output the albums date and nothing else, the release date for the album was 1967*/
SELECT genre FROM albums Where name = 'Nevermind';
/*The genre that was output was Rock and nothing else*/
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
/*All of the albyms with dates between 1990 and 1999 were output*/
SELECT * FROM albums WHERE sales_in_millions < 20;
/*All the albums that have less than 20 million in sales were output */
SELECT * FROM albums WHERE genre = 'Rock';
/*All albums with a genre of just Rock were only selected because it is seen as a whole string*/