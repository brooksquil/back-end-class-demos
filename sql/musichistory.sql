BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Song` (
	`SongId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Title`	TEXT NOT NULL,
	`SongLength`	INTEGER NOT NULL,
	`ReleaseDate`	TEXT NOT NULL,
	`GenreId`	INTEGER,
	`ArtistId`	INTEGER NOT NULL,
	`AlbumId`	INTEGER NOT NULL,
	FOREIGN KEY(`GenreId`) REFERENCES `Genre`(`GenreId`),
	FOREIGN KEY(`ArtistId`) REFERENCES `Artist`(`ArtistId`),
	FOREIGN KEY(`AlbumId`) REFERENCES `Album`(`AlbumId`)
);
INSERT INTO `Song` VALUES (1,'Revenge',61,'12/03/1982',9,8,22);
INSERT INTO `Song` VALUES (2,'White Minority',69,'12/03/1982',9,8,22);
INSERT INTO `Song` VALUES (3,'Gimme Gimme Gimme',120,'12/03/1982',9,8,22);
INSERT INTO `Song` VALUES (4,'No Values',118,'12/03/1982',9,8,22);
INSERT INTO `Song` VALUES (5,'TV Party',232,'06/12/1982',9,8,21);
INSERT INTO `Song` VALUES (6,'I''ve Got To Run',105,'06/12/1982',9,8,21);
INSERT INTO `Song` VALUES (7,'My Rules',71,'06/12/1982',9,8,21);
INSERT INTO `Song` VALUES (8,'Gimme All Your Lovin',507,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (9,'Sharp Dressed Man',419,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (10,'Legs',309,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (11,'I Need You Tonight',470,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (12,'TV Dinners',539,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (13,'Thug',925,'3/23/1983',2,3,17);
INSERT INTO `Song` VALUES (14,'Taxman',714,'8/5/1966',7,6,5);
INSERT INTO `Song` VALUES (15,'Eleanor Rigby',807,'8/5/1966',7,6,5);
INSERT INTO `Song` VALUES (16,'Good Day Sunshine',350,'8/5/1966',7,6,5);
INSERT INTO `Song` VALUES (17,'Got To Get You Into My Life',574,'8/5/1966',7,6,5);
INSERT INTO `Song` VALUES (18,'Interlude',237,'12/03/1982',13,27,1);
INSERT INTO `Song` VALUES (19,'What More Can I Say',150,'12/03/1982',13,27,1);
INSERT INTO `Song` VALUES (20,'Encore',260,'12/03/1982',13,27,1);
INSERT INTO `Song` VALUES (21,'Dirt Off Your Shoulder',851,'12/03/1982',13,27,1);
CREATE TABLE IF NOT EXISTS `Genre` (
	`GenreId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Label`	TEXT NOT NULL
);
INSERT INTO `Genre` VALUES (1,'Americana');
INSERT INTO `Genre` VALUES (2,'Americana');
INSERT INTO `Genre` VALUES (3,'Americana');
INSERT INTO `Genre` VALUES (4,'Americana');
INSERT INTO `Genre` VALUES (5,'Americana');
INSERT INTO `Genre` VALUES (6,'Americana');
INSERT INTO `Genre` VALUES (7,'Americana');
INSERT INTO `Genre` VALUES (8,'Americana');
INSERT INTO `Genre` VALUES (9,'Americana');
INSERT INTO `Genre` VALUES (10,'Americana');
INSERT INTO `Genre` VALUES (11,'Americana');
INSERT INTO `Genre` VALUES (12,'Americana');
INSERT INTO `Genre` VALUES (13,'Americana');
INSERT INTO `Genre` VALUES (14,'Americana');
INSERT INTO `Genre` VALUES (17,'Americana');
CREATE TABLE IF NOT EXISTS `Artist` (
	`ArtistId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`ArtistName`	TEXT NOT NULL,
	`YearEstablished`	INTEGER NOT NULL
);
INSERT INTO `Artist` VALUES (1,'Judas Priest',1969);
INSERT INTO `Artist` VALUES (2,'Def Leppard',1977);
INSERT INTO `Artist` VALUES (3,'ZZTop',1969);
INSERT INTO `Artist` VALUES (4,'Genesis',1967);
INSERT INTO `Artist` VALUES (5,'Journey',1973);
INSERT INTO `Artist` VALUES (6,'Beatles',1960);
INSERT INTO `Artist` VALUES (7,'Howlin'' Wolf',1959);
INSERT INTO `Artist` VALUES (8,'Black Flag',1981);
INSERT INTO `Artist` VALUES (9,'Porcupine Tree',1987);
INSERT INTO `Artist` VALUES (10,'Grateful Dead',1965);
INSERT INTO `Artist` VALUES (11,'The Shins',1996);
INSERT INTO `Artist` VALUES (12,'Rush',1968);
INSERT INTO `Artist` VALUES (13,'The Features',1998);
INSERT INTO `Artist` VALUES (14,'Squeeze',1977);
INSERT INTO `Artist` VALUES (15,'Midnight Oil',1976);
INSERT INTO `Artist` VALUES (16,'Dire Straits',1977);
INSERT INTO `Artist` VALUES (17,'Hoodoo Gurus',1981);
INSERT INTO `Artist` VALUES (18,'U2',1976);
INSERT INTO `Artist` VALUES (19,'Mayer Hawthorne',2009);
INSERT INTO `Artist` VALUES (20,'David Bowie',1968);
INSERT INTO `Artist` VALUES (21,'Sigur Ros',1997);
INSERT INTO `Artist` VALUES (22,'deadmau5',2006);
INSERT INTO `Artist` VALUES (23,'Justice',2007);
INSERT INTO `Artist` VALUES (24,'Miles Davis',1948);
INSERT INTO `Artist` VALUES (25,'The Sheepdogs',2006);
INSERT INTO `Artist` VALUES (26,'Coheed & Cambria',2001);
INSERT INTO `Artist` VALUES (27,'Fang',1992);
CREATE TABLE IF NOT EXISTS `Album` (
	`AlbumId`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Title`	TEXT NOT NULL,
	`ReleaseDate`	TEXT NOT NULL,
	`AlbumLength`	INTEGER NOT NULL,
	`Label`	TEXT NOT NULL,
	`ArtistId`	INTEGER NOT NULL,
	`GenreId`	INTEGER,
	FOREIGN KEY(`ArtistId`) REFERENCES `Artist`(`ArtistId`),
	FOREIGN KEY(`GenreId`) REFERENCES `Genre`(`GenreId`)
);
INSERT INTO `Album` VALUES (1,'The Blueprint','11/14/2003',2268,'Def Jam',27,13);
INSERT INTO `Album` VALUES (2,'A Strange Arrangement','09/08/2009',2082,'Stones Throw Records',19,1);
INSERT INTO `Album` VALUES (3,'How Do You Do','10/11/2011',2357,'Stones Throw Records',19,1);
INSERT INTO `Album` VALUES (4,'Where Does This Door Go','06/16/2013',3114,'Stones Throw Records',19,1);
INSERT INTO `Album` VALUES (5,'Revolver','08/05/1966',2083,'Parlophone',6,2);
INSERT INTO `Album` VALUES (6,'Sgt. Pepper''s Lonely Hearts Club Band','06/01/1967',2392,'Stones Throw Records',6,2);
INSERT INTO `Album` VALUES (7,'Magical Mystery Tour','11/27/1967',1148,'Stones Throw Records',6,2);
INSERT INTO `Album` VALUES (8,'The Blueprint','06/17/1982',2322,'Columbia',1,2);
INSERT INTO `Album` VALUES (9,'The Blueprint','02/26/1981',2262,'Columbia',1,2);
INSERT INTO `Album` VALUES (10,'The Blueprint','01/04/1984',2383,'Columbia',1,2);
INSERT INTO `Album` VALUES (11,'The Blueprint','03/06/1957',2327,'Columbia',24,4);
INSERT INTO `Album` VALUES (12,'The Blueprint','10/21/1957',2132,'Columbia',24,4);
INSERT INTO `Album` VALUES (13,'The Blueprint','09/02/1958',2856,'Columbia',24,4);
INSERT INTO `Album` VALUES (14,'Moanin'' in the Moonlight','05/14/1959',2033,'Chess',7,3);
INSERT INTO `Album` VALUES (15,'Howlin'' Wolf','10/21/1957',1917,'Chess',7,3);
INSERT INTO `Album` VALUES (16,'The Howlin'' Wolf Album','09/02/1969',2459,'Chess',7,3);
INSERT INTO `Album` VALUES (17,'Eliminator','3/23/1983',2668,'Warner Bros.',3,2);
INSERT INTO `Album` VALUES (18,'Afterburner','1/1/2011',417,'Warner Bros.',3,2);
INSERT INTO `Album` VALUES (19,'Tres Hombres','6/14/1979',321,'Warner Bros.',3,2);
INSERT INTO `Album` VALUES (20,'Damaged','12/05/1981',2098,'SST',8,9);
INSERT INTO `Album` VALUES (21,'TV Party','07/12/1982',409,'SST',8,9);
INSERT INTO `Album` VALUES (22,'Everything Went Black','12/03/1982',3718,'SST',8,9);
COMMIT;
