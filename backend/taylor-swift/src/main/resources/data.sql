DROP TABLE IF EXISTS `TAYLORS_SONGS`;
DROP TABLE IF EXISTS `TAYLORS_ALBUMS`;


CREATE TABLE `TAYLORS_SONGS` (
	`SONG` varchar(250) NOT NULL,
	`QUOTE` varchar(600) NOT NULL,
	`INSPIRED_BY_WHICH_LOVER` varchar (250),
	`TAYLORS_ALBUM` varchar(250) NOT NULL,
	`SONGS_ID` int AUTO_INCREMENT PRIMARY KEY,
	`SONG_URL` varchar(500) NOT NULL
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


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Cardigan', 'I knew you`d miss me once the thrill expired
And you`d be standin` in my front porch light
And I knew you`d come back to me', 'Folklore', 'https://open.spotify.com/track/4R2kfaDFhslZEMJqAFNpdd?si=9db8c360598e40e8');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('All Too Well', 'You kept me like a secret, but I kept you like an oath', 'Jake Gyllenhaal', 'Red TV','https://open.spotify.com/track/5enxwA8aAbwZbf5qCHORXi?si=1ce3b3aa99324416');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Dorothea', 'You`re a queen
Selling dreams
Selling make up and magazines
Ooh, from you I`d buy anything', 'Evermore', 'https://open.spotify.com/track/670fUmXf4KQekzbEgaXyPA?si=4c7a70021de64c9d');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Vigilante Shit', 'Draw the cat eye sharp enough to kill a man', 'Midnights','https://open.spotify.com/track/1xwAWUI6Dj0WGC3KiUPN0O?si=f05be298c1d14552');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Paper Rings', 'I like shiny things but I`d marry you with paper rings', 'Joe Alwyn', 'Lover', 'https://open.spotify.com/track/4y5bvROuBDPr5fuwXbIBZR?si=203867165912444c');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('The Lakes', 'Take me to the lakes where all the poets went to die', 'Folklore','https://open.spotify.com/track/0UAdDYrkCvVQftaKpL6q5f?si=503ab77742c142fe' );



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM` ,`SONG_URL`)
VALUES ('Marjorie', 'Should`ve kept every grocery store receipt `cause every scrap of you would be taken from me', 'Evermore', 'https://open.spotify.com/track/12ntTeqEeTg7GAVpe8Mhpl?si=01a940521ece4587');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES (' Anti-Hero', 'I have this dream my daughter in-law kills me for the money she thinks I left them in the will', 'Midnights','https://open.spotify.com/track/0V3wPSX9ygBnCm8psDIegu?si=6207d4f459c04d06');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Getaway Car', 'I`m in a getaway car I left you in a motel bar', 'Tom Hiddleston', 'Reputation', 'https://open.spotify.com/track/0VE4kBnHJUgtMf0dy6DRmW?si=11c6a9e337ab4906');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Clean', 'You`re still all over me like a wine-stained dress I can`t wear anymore', 'Harry Styles', '1989', 'https://open.spotify.com/track/1NmVZsG18CzCAtw7rnV3yA?si=7cd7b63359c545a3');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Begin Again', 'I`ve been spending the last eight months thinking all love ever does is break and burn, and end', 'Red TV', 'https://open.spotify.com/track/05GsNucq8Bngd9fnd4fRa0?si=c0539060eb654c23');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Mirrorball', 'I`m still trying everything to keep you looking at me', 'Folklore','https://open.spotify.com/track/0ZNU020wNYvgW84iljPkPP?si=ffbf054f72ac49cb');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('So It Goes', 'You did a number on me but honestly, baby, who`s counting?', 'Joe Alwyn', 'Reputation','https://open.spotify.com/track/5PxFv9yJEg9dxvbZggykro?si=7c1c9787d4f74139');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('The Man', 'I`m so sick of running as fast as I can wondering if I`d get there quicker If I was a man', 'Lover', 'https://open.spotify.com/track/3RauEVgRgj1IuWdJ9fDs70?si=1431d9c0daec438b');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('London Boy', 'He likes my American smile like a child when our eyes meet', 'Joe Alwyn', 'Lover', 'https://open.spotify.com/track/1LLXZFeAHK9R4xUramtUKw?si=612975314fde432e');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('The Lucky One', 'And they still tell the legend of how you disappeared how you took the money and your dignity and got the hell out ', 'Red TV','https://open.spotify.com/track/4e5ayHsOLJNLTGfjau2mEw?si=49b03a769478455f');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Nothing New', 'They tell you while you`re young `girls, go out and have your fun` then they hunt and slay the ones who actually do it', 'Red TV', 'https://open.spotify.com/track/01K4zKU104LyJ8gMb7227B?si=30a84abff5fb43cf');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`,`SONG_URL`)
VALUES ('Happiness', 'I can`t make it go away by making you a villain I guess it`s the price I pay for seven years in Heaven', 'Evermore', 'https://open.spotify.com/track/73YUReisjb3A9ActdLLjJQ?si=51036c5bae86437c');


















