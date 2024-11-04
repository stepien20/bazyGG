drop database if exists uczniowie;
create database uczniowie;
use uczniowie;
	
create table uczniowie (
		id int auto_increment primary key,
		imie varchar(45) not null,
		nazwisko varchar(45) not null,
		wiek int not null
		);


insert into uczniowie (imie, nazwisko, wiek) values ('albert','sosnowski',17),
												    ('damian','maniek',12),
													('marek','wolski',14),
													('monika','brodka',17),
													('anna','lipa',21);

