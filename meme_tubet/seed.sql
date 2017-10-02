DROP TABLE IF EXISTS vids;

-- rest the table
CREATE TABLE vids (

	id SERIAL PRIMARY KEY,
	title VARCHAR,
	url TEXT,
	description TEXT,
	genre TEXT

);



INSERT INTO vids (title, url, description, genre) VALUES ('Try Not To Laugh Challenge (Dank Memes + Fail Videos) JUNE 2017', 'https://www.youtube.com/embed/YNR9UE3Ug', 'Try Not To Laugh Challenge  *Dank Memes + Fail Videos* JUNE 2017', 'comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('12 MIN OF DANK MEMES #30', '<iframe width="560" height="315" src="https://www.youtube.com/embed/TWqqFa56-a4" frameborder="0" allowfullscreen></iframe>', 'DANK MEMES #30', 'comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('YOU CLICK, YOU LAUGH, YOU LOSE! - Compilation of Funny Stuff, Dank Videos and Memes', 'https://www.youtube.com/embed/FRv0BRrZue', 'Compilation of Funny Stuff, Dank Videos and Memes', 'comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('I BET MY SOUL YOU WILL LAUGH', 'https://www.youtube.com/embed/HUAHqWya', 'I BET MY SOUL YOU WILL LAUGH', 'comedy');
INSERT INTO vids (title, url, description, genre) VALUES ('IF YOU LAUGH, YOU SHOULD GO TO HELL', 'https://www.youtube.com/embed/0x4MFInUyI', 'YOU LAUGH, YOU SHOULD GO TO HELL', 'comedy');
