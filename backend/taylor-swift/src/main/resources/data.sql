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
VALUES ('Red TV', 'All Too Well 10 Min TV');

INSERT INTO `TAYLORS_ALBUMS` (`ALBUM`, `SONG_RECOMMENDATION`)
VALUES ('Fearless TV', 'White Horse');

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
VALUES ('All Too Well', 'You kept me like a secret, but I kept you like an oath', 'Jake Gyllenhaal', 'Red TV');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Dorothea', 'You`re a queen
Selling dreams
Selling make up and magazines
Ooh, from you I`d buy anything', 'Evermore');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Vigilante Shit', 'Draw the cat eye sharp enough to kill a man', 'Midnights');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Paper Rings', 'I like shiny things but I`d marry you with paper rings', 'Joe Alwyn', 'Lover');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('The Lakes', 'Take me to the lakes where all the poets went to die', 'Midnights');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Marjorie', 'Should`ve kept every grocery store receipt `cause every scrap of you would be taken from me', 'Evermore');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES (' Anti-Hero', 'I have this dream my daughter in-law kills me for the money she thinks I left them in the will', 'Midnights');





INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Getaway Car', 'I`m in a getaway car I left you in a motel bar', 'Tom Hiddleston', 'Reputation');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Clean', 'You`re still all over me like a wine-stained dress I can`t wear anymore', 'Harry Styles', '1989');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Begin Again', 'I`ve been spending the last eight months thinking all love ever does is break and burn, and end', 'Red TV');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Mirrorball', 'I`m still trying everything to keep you looking at me', 'Folklore');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('So It Goes', 'You did a number on me but honestly, baby, who`s counting?', 'Joe Alwyn', 'Reputation');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('The Man', 'I`m so sick of running as fast as I can wondering if I`d get there quicker If I was a man', 'Lover');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('London Boy', 'He likes my American smile like a child when our eyes meet', 'Joe Alwyn', 'Lover');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('The Lucky One', 'And they still tell the legend of how you disappeared how you took the money and your dignity and got the hell out ', 'Red TV');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Nothing New', 'They tell you while you`re young `girls, go out and have your fun` then they hunt and slay the ones who actually do it', 'Red TV');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Happiness', 'I can`t make it go away by making you a villain I guess it`s the price I pay for seven years in Heaven', 'Evermore');



















