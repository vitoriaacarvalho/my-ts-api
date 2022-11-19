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



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('You`re On Your Own Kid', 'I didn`t choose this town
I dream of getting out
There`s just one who could make me stay
All my days', 'Midnights');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('King Of My Heart', 'Is this the end of all the endings?
My broken bones are mending
With all these nights we`re spending
Up on the roof with a school girl crush', 'Joe Alwyn', 'Reputation');

INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Anti-Hero', 'I have this dream my daughter in-law kills me for the money
She thinks I left them in the will
The family gathers around and reads it and then someone screams out
She`s laughing up at us from hell', 'Midnights');





INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Getaway Car', 'I`m in a getaway car
I left you in a motel bar
Put the money in a bag and I stole the keys
That was the last time you ever saw me ', 'Tom Hiddleston', 'Reputation');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Clean', 'You`re still all over me
Like a wine-stained dress I can`t wear anymore', 'Harry Styles', '1989');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Look What You Made Me Do', 'I`m sorry
But the old Taylor can`t come to the phone right now
Why? Oh, `cause she`s dead`', '1989');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('The Great War', 'All that bloodshed, crimson clover
, the bombs were close and
My hand was the one you reached for
All throughout the Great War', 'Joe Alwyn', 'Midnights');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('Dress', 'Say my name and everything just stops
I don`t want you like a best friend', 'Joe Alwyn', 'Reputation');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('The Man', 'I`m so sick of running as fast as I can
Wondering if I`d get there quicker
If I was a man', 'Lover');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('London Boy', 'He likes my American smile
Like a child when our eyes meet, darling, I fancy you', 'Joe Alwyn', 'Lover');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('The Lucky One', 'It was a few years later, I showed up here
And they still tell the legend of how you disappeared
How you took the money and your dignity and got the hell out
They say you bought a bunch of land somewhere
Chose the Rose Garden over Madison Square
And it took some time, but I understand it now', 'Red Taylor`s Version');



INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`,`TAYLORS_ALBUM`)
VALUES ('Nothing New feat Phoebe Bridges', 'They tell you while you`re young
`Girls, go out and have your fun`
Then they hunt and slay the ones who actually do it', 'Red Taylor`s Version');


INSERT INTO `TAYLORS_SONGS` (`SONG`, `QUOTE`, `INSPIRED_BY_WHICH_LOVER`,`TAYLORS_ALBUM`)
VALUES ('I Bet You Think About Me', 'Mr. Superior-Thinking
Do you have all the space that you need?
I don`t have to be your shrink to know that you`ll never be happy
And I bet you think about me', 'Jake Gyllenhaal', 'Red Taylor`s Version');



















