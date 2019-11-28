/*Altering(editing) a table
Alter Table Table_name
Add column_name  column_type  opptional_constraint

or to dropp a table
ALTER TABLE "Table_NAme"
DROP "column_name";

or to change a primary key; drop it first then add a new column as the primary key;
e.g
(alter table table_name
drop primary key;)
*/

#alter table human
#add location char(30) not null;
drop table movie_genres;
alter table movie_genres
add constraint mov_gen_pk primary key(gen_id) ;