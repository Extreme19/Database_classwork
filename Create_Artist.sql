use artist;
create table Artist(
Artist_ID		integer		not null,
Artist_Name		char(40)	not null,
Rating			integer		null,
Phone_Number	char(20)	not null,
constraint		artist_PK	primary key(Artist_ID));

create table Album(
Artist_ID		integer		not null,
Track			integer		not null,
Genre			char(35)	null,
Release_Year	char(10)	not null,
constraint		Album_FK	Foreign key(Artist_ID)
references 	Artist(Artist_ID));
