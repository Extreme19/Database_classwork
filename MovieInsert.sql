use movie;

insert into actor values(0007, "James", "Bond", "m");
insert into actor values(0008, "Felix", "Justina", "f");
insert into actor values(0009, "Griffin", "Jonah", "m");
insert into actor values(0010, "Angelina", "Jolie", "f");

insert into director  values(2091, "Philip","Jones");
insert into director  values(2092, "Stanley","Audi");
insert into director  values(2093, "Adeniyi","Matson");
insert into director  values(2094, "Joshua","Matthew");


insert into movie values(2908, "Rise of the umpire", 2007, 2, "Kabba", "2007-02-02","Spain");
insert into movie values(2909, "American Beauty", 2008, 3, "French", "2008-08-12","USA");
insert into movie values(2910, "Things fall apart", 1998, 1, "Igbo", "1998-05-02","Nigeria");
insert into movie values(2911, "Eyes wide shut", 1999, 3, "English", "1999-10-11","Canada");



insert into genres values (1142, "Science fiction");
insert into genres values (1143, "Comedy");
insert into genres values (1144, "Adventure");
insert into genres values (1145, "Action");

insert into reviewer values(8564, "Matt philingrens");
insert into reviewer values(8565, "Thomas Bode");
insert into reviewer values(8566, "Travis Smith");
insert into reviewer values(8567, "Jane Gowthy");


insert into rating values(2908, 8564, 4, 8);
insert into rating values(2909, 8565, 4, 7);
insert into rating values(2910, 8564, 2, 5);
insert into rating values(2911, 8566, 3, 7);
insert into rating values(2908, 8567, 5, 9);

insert into movie_genres values(2908,1142);
insert into movie_genres values(2909,1145);
insert into movie_genres values(2910,1143);
insert into movie_genres values(2911,1143);




insert into movie_cast values(0007, 2908, "Time traveller");
insert into movie_cast values(0009, 2909, "Villain");
insert into movie_cast values(0008, 2911, "Emperor");
insert into movie_cast values(0010, 2910, "Fighter");




insert into movie_direction values(2091,2908);
insert into movie_direction values(2093,2911);
insert into movie_direction values(2094,2910);
insert into movie_direction values(2094,2909);
insert into movie_direction values(2092,2911);
