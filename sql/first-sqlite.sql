/*select title, label from Album where label = "Def Jam";
 
select label from Album where AlbumId >5;

select label from Album where AlbumId in (1,2,3,4);

select * from Album order by ReleaseDate;

select * from Album order by ReleaseDate desc;

select * from Album order by title, ReleaseDate desc;

select title from Album where label = "Columbia" and title = "Screaming for Vengeance";

select title from Album where label = "Columbia" or label = "Def Jam";

select * from Album where NOT label = "Columbia";

insert into Genre (Label) values ("Emo");*/


select * from Genre;

/*delete from Genre where Label = "Test";
delete from Genre where Label = "Screamo";
delete from Genre where GenreId = 16;

update Genre set Label = "Americana" where Label = "Rap";*/

select * from Artist;

update Artist set ArtistName = "Fang", YearEstablished = "1992" where ArtistName = "Jay Z";

select * from Album;
update Album set  title = "The Blueprint" where label = "Def Jam" or label = "Columbia"