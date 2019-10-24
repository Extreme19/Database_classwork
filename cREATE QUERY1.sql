/*create a new table for Humans and Games
*/

use classwork;

create table Human(
HumanId		integer		not null,
HumanName	char(30)	not null,
Age			integer		not null,
Sex			char(10)	not null,
constraint	Human_PK	primary key (HumanId));


create table Games(
GameType	char(20)	not null,
GameName	char(40)	not null,
HumanId		char(30)	not null,
Subscription	char(30)	not null,
Comments		char(50)	null,
constraint		Games_PK	primary key (GameType),
constraint		Games_FK	foreign key(HumanId)
references		Human(HumanId));
