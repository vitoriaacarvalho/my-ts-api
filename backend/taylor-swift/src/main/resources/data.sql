DROP TABLE IF EXISTS `TAYLORS_SONGS`;
DROP TABLE IF EXISTS `TAYLORS_ALBUMS`;


CREATE TABLE `TAYLORS_SONGS` (
	`SONG` varchar(250) NOT NULL,
	`QUOTE` varchar(600) NOT NULL,
	`INSPIRED_BY_WHICH_LOVER` varchar (250),
	`TAYLORS_ALBUM` varchar(250) NOT NULL,
	`SONGS_ID` int AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE `TAYLORS_ALBUMS` (
  	`ALBUM` varchar(150) NOT NULL,
  	`SONG_RECOMMENDATION` varchar(250),
  	`ALBUMS_ID` int AUTO_INCREMENT  PRIMARY KEY
);

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Folklore', 'cardigan + betty + august (the famous love triangle)');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Midnights', 'the great war');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Evermore', 'tis the damn season + dorothea (they are about the same story)');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Red Taylor`s Version', 'All Too Well 10 Minute Version (Taylor`s Version');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Fearless Taylor`s Version', 'White Horse');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Reputation', 'Look What You Made Me Do');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Lover', 'Death By A Thousand Cuts');


INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('1989', 'Style');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Speak Now', 'Dear John');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Taylor Swift', 'Should`ve said no');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Cardigan', 'I knew you`d miss me once the thrill expired
And you`d be standin` in my front porch light
And I knew you`d come back to me', 'Folklore');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('All Too Well 10 Minute Version', 'You kept me like a secret, but I kept you like an oath', 'Jake Gyllenhaal', 'Red Taylor`s Version');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Dorothea', 'You`re a queen
Selling dreams
Selling make up and magazines
Ooh, from you I`d buy anything', 'Evermore');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Mr Perfectly Fine', 'Goodbye Mr. "Perfectly fine"
How`s your heart after breakin` mine?
Mr. "Always at the right place at the right time"', 'Joe Jonas', 'Fearless Taylor`s Version');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Vigilante Shit', 'Draw the cat eye sharp enough to kill a man', 'Midnights');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Back To December', 'So this is me swallowin` my pride
Standin` in front of you sayin` I`m sorry for that night
And I go back to December all the time', 'Taylor Lautner', 'Speak Now');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Mastermind', 'What if I told you none of it was accidental
And the first night that you saw me, nothing was gonna stop me?', 'Joe Alwyn', 'Midnights');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Lover', 'Ladies and gentlemen, will you please stand?
With every guitar string scar on my hand
I take this magnetic force of a man to be my lover', 'Joe Alwyn', 'Lover');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('hoax', 'You knew you won, so what`s the point of keeping score?
You knew it still hurts underneath my scars
From when they pulled me apart
But what you did was just as dark
Darling, this was just as hard', 'Karlie Kloss', 'Folklore');


