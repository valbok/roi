CONNECT 'i:\roi\semina.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'i:\roi\semina.GDB' USER "admin" PASSWORD "1";

CREATE DOMAIN D_P_KEY AS
	INTEGER NOT NULL;

CREATE DOMAIN Dname AS
	varchar(50) NOT NULL;
CREATE DOMAIN Dcost AS
	DOUBLE PRECISION check (value >=0) NOT NULL;
CREATE DOMAIN Dcopies AS
	integer check (value >=0) NOT NULL;
CREATE DOMAIN Ddate AS
	timestamp check (value >='1.1.1970');


CREATE TABLE Izdatelstva (
		ID D_P_KEY,
		name Dname,
		address varchar(150),
		phone varchar(50),
		e_mail varchar(50),
		glav_redaktor varchar(150),
		primary key(id)
		
);

CREATE TABLE janri (
		ID D_P_KEY,
		name Dname,
		primary key(id),
		CONSTRAINT cj_name unique (name)
);

CREATE TABLE strani (
		ID D_P_KEY,
		name Dname,
		primary key(id),
		CONSTRAINT cs_name unique (name)
);
CREATE TABLE avtori (
		ID D_P_KEY,
		fam Dname,		
		name Dname,
		otch varchar(50),
		strana_id integer,
		primary key(id),
		
		CONSTRAINT fk_avtori_strana_id
		FOREIGN KEY (strana_id) REFERENCES strani (ID)
);

CREATE TABLE knigi (
		ID D_P_KEY,
		name varchar(200),
		janr_id integer,
		avtor_id integer not null,
		cost Dcost,

		primary key(id),
		CONSTRAINT fk_knigi_janr_id
			FOREIGN KEY (janr_id) REFERENCES janri (ID),
		CONSTRAINT fk_knigi_avtor_id
			FOREIGN KEY (avtor_id) REFERENCES avtori (ID)
);

CREATE TABLE vipusk (
		ID D_P_KEY,
		kniga_id integer not null,
		col_copies Dcopies,
		izd_id integer not null,
		data_vipuska ddate,

		primary key(id),
		CONSTRAINT fk_vipusk_kniga_id
			FOREIGN KEY (kniga_id) REFERENCES knigi (ID),
		CONSTRAINT fk_vipusk_izd_id
			FOREIGN KEY (izd_id) REFERENCES izdatelstva (ID)
);


CREATE GENERATOR Izdatelstva_ID_GEN;
CREATE GENERATOR janri_ID_GEN;
CREATE GENERATOR strani_ID_GEN;
CREATE GENERATOR avtori_ID_GEN;
CREATE GENERATOR knigi_id_GEN;
CREATE GENERATOR vipusk_id_GEN;


SET TERM ^;


CREATE TRIGGER SET_Izdatelstva_ID FOR Izdatelstva
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(Izdatelstva_ID_GEN,1);
	END
^
CREATE TRIGGER SET_janri_ID FOR janri
BEFORE INSERT AS
	BEGIN
		NEW.id=GEN_ID(janri_ID_GEN,1);
	END
^


CREATE TRIGGER SET_strani_ID FOR strani
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(strani_ID_GEN,1);
	END
^


CREATE TRIGGER SET_avtori_ID FOR avtori
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(avtori_ID_GEN,1);
	END
^

CREATE TRIGGER SET_knigi_id FOR knigi
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(knigi_id_GEN,1);
	END
^

CREATE TRIGGER SET_vipusk_id FOR vipusk
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(vipusk_id_GEN,1);
	END
^

SET TERM ;^
/*--------------------- procedure Begin------------------*/



/*-------------------Delete records----------------------*/

/*---------------------------Delete izdatelstvo-----------------------*/
CREATE EXCEPTION izdatelstvo_NOT_exists 'Ошибка! Такого издательства не существует.';

SET TERM ^;

CREATE PROCEDURE delete_izdatelstvo
(
	iizdatelstvo_id integer
)
AS
	DECLARE VARIABLE izdat_ID integer;

	DECLARE VARIABLE vipusk_ID integer;

BEGIN

	select id from izdatelstva
	where id =:iizdatelstvo_id
	into :izdat_id;
		if (izdat_id is null) then  
			begin
				exception izdatelstvo_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на izdatelstvo*/
					for
						select id from vipusk
						where izd_id=:izdat_id
						into :vipusk_id
 					do
 						   if (not(vipusk_id is null)) then
							begin
							  delete from vipusk
							  where id=:vipusk_id;
						      end /* =====del vipusk========*/
			delete from izdatelstva 
			where id=:izdat_id;
				/*del izdat-vo*/
			
			end
END^

SET TERM ;^
/* =================Delete izdatesltva end -----------*/

/*------------------ Delete knigi ---------Begin-----*/

CREATE EXCEPTION Knigi_NOT_exists 'Ошибка! Такой книги не существует.';

SET TERM ^;

CREATE PROCEDURE delete_kniga
(
	ikniga_id integer
)
AS
	DECLARE VARIABLE knig_ID integer;
	DECLARE VARIABLE vipusk_ID integer;
BEGIN

	select id from knigi
	where id =:ikniga_id
	into :knig_id;
		if (knig_id is null) then  
			begin
				exception knigi_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на knigy*/
					for
						select id from vipusk
						where kniga_id=:knig_id
						into :vipusk_id
 					do
 						   if (not(vipusk_id is null)) then
							begin
								delete from vipusk
								where id=:vipusk_id;
						      end  
							/* =====vipusk----------*/
								
			delete from knigi
			where id=:knig_id;
			
			end
END^

SET TERM ;^

/*-------------------------DElete knigi END----*/

/*------------------ Delete janr -------Begin-------*/

CREATE EXCEPTION janr_NOT_exists 'Ошибка! Такого жанра не существует.';

SET TERM ^;

CREATE PROCEDURE delete_janr
(
	ijanr_name varchar(50)
)
AS
	DECLARE VARIABLE vjanr_id integer;

	DECLARE VARIABLE kniga_ID integer;

BEGIN

	select id from janri
	where name =:ijanr_name
	into :vjanr_id;
		if (vjanr_id is null) then  
			begin
				exception janr_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на janr*/
					for
						select id from knigi
						where janr_id=:vjanr_id
						into :kniga_id
 					do
 						   if (not(kniga_id is null)) then
							begin
							      update knigi
								set janr_id = null
								where id=:kniga_id;
						      end  
							/* =====Knigi---------*/
								
			delete from janri 
			where id=:vjanr_id;
			
			end
END^

SET TERM ;^

/*-----------------------Delete Janr END------*/

/*------------------ Delete Avtor --------------*/

CREATE EXCEPTION Avtor_NOT_exists 'Ошибка! Такого автора не существует.';

SET TERM ^;

CREATE PROCEDURE delete_avtor
(
	iavtor_id integer
)
AS
	DECLARE VARIABLE avt_ID integer;

	DECLARE VARIABLE kniga_ID integer;
	DECLARE VARIABLE vipusk_ID integer;

BEGIN

	select id from avtori
	where id =:iavtor_id
	into :avt_id;
		if (avt_id is null) then  
			begin
				exception avtor_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на avtor*/
					for
						select id from knigi
						where avtor_id=:avt_id
						into :kniga_id
 					do
 						   if (not(kniga_id is null)) then
							begin

							execute procedure delete_kniga(:kniga_id);

							/* for
								select id from vipusk
								where kniga_id=:kniga_id
								into :vipusk_id
		 					do
 								   if (not(vipusk_id is null)) then
									begin
										delete from vipusk
										where id=:vipusk_id;
								      end  
							
							delete from knigi
							where id=:kniga_id;*/
						      end  
						
							/* =====Knigi---------*/
								
			delete from avtori 
			where id=:avt_id;
		
			end
END^

SET TERM ;^

/*------------------Delete avt END-----------*/


/*------------------ Delete Avtorstvo --------------*/

CREATE EXCEPTION strana_NOT_exists 'Ошибка! Такой страны не существует.';

SET TERM ^;

CREATE PROCEDURE delete_strana
(
	istrana_name varchar(50)
)
AS
	DECLARE VARIABLE city_ID integer;
	DECLARE VARIABLE avtor_ID integer;

BEGIN

	select id from strani
	where name =:istrana_name
	into :city_id;
		if (city_id is null) then  
			begin
				exception strana_not_exists;
			end else
			begin
			/*Проверка есть ли в других таблицах ссылки на strana*/
					for
						select id from avtori
						where strana_id=:city_id
						into :avtor_id
 					do
 						   if (not(avtor_id is null)) then
							begin
							      update avtori
								set strana_id = null
								where id=:avtor_id;
						      end  
							/* =====avtori---------*/
			delete from strani
			where id=:city_id;
			end
END^

SET TERM ;^

/*----------------------Delete city End-------*/

/*------------------ Delete vipusk --------------*/

CREATE EXCEPTION vipusk_NOT_exists 'Ошибка! Такого выпуска не существует.';

SET TERM ^;

CREATE PROCEDURE delete_vipusk
(
	ivipusk_id integer
)
AS
	DECLARE VARIABLE vip_ID integer;
	DECLARE VARIABLE vizd_ID integer;


BEGIN

	select id from vipusk
	where id =:ivipusk_id
	into :vip_id;
		if (vip_id is null) then  
			begin
				exception vipusk_not_exists;
			end else
			begin
				delete from vipusk
				where id=:vip_id;
			
			end
END^

SET TERM ;^

/*----------------------Delete vipusk End-------*/


grant all on Izdatelstva  to "admin" WITH GRANT OPTION;
grant all on janri to "admin" WITH GRANT OPTION;
grant all on strani  to "admin" WITH GRANT OPTION;
grant all on avtori to "admin" WITH GRANT OPTION;
grant all on knigi to "admin" WITH GRANT OPTION;
grant all on vipusk to "admin" WITH GRANT OPTION;

grant select on Izdatelstva to public;
grant select on janri to public;
grant select on strani to public;
grant select on avtori to public;
grant select on knigi to public;
grant select on vipusk  to public;



grant delete on Izdatelstva to procedure delete_Izdatelstvo;
grant delete on janri to procedure delete_janr;
grant delete on strani to procedure delete_strana;
grant delete on avtori to procedure delete_avtor;
grant delete on knigi to procedure delete_kniga;
grant delete on vipusk to procedure delete_vipusk;

grant delete on vipusk to procedure delete_izdatelstvo,delete_kniga;/*,delete_avtor;*/
grant update on knigi to procedure delete_janr;
grant update on avtori to procedure delete_strana;


GRANT EXECUTE ON PROCEDURE delete_Izdatelstvo TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_janr TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_strana TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_avtor TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_kniga TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_vipusk TO "admin" WITH GRANT OPTION;

revoke all on Izdatelstva from "user";

revoke select on Izdatelstva from "Ira";
revoke select on janri from "Ira";
revoke select on strani from "guest";
revoke select on avtori from "guest";
revoke select on knigi from "guest";
revoke select on vipusk from "guest";

commit;

/*--------------------------------------*/

insert into Izdatelstva(name,        address,               phone,      e_mail,              glav_redaktor)
		values(    'SydIxodstvo','Odessa ms str 23 der2','7985-444-4','sydo@yandex.ru','Potemkin AU');
insert into Izdatelstva(name,        address,               phone,      e_mail,              glav_redaktor)
		values(    'Sdx','Kyiv  21 der1','555-444-4','s@yandex.ru','Tarasov AU');
insert into Izdatelstva(name,        address,               phone,      e_mail,              glav_redaktor)
		values(    'Persty','Moscow ms str 23 de','917-111-2','de@mos.msk','Pilokin PO');
insert into Izdatelstva(name,        address,               phone,      e_mail,              glav_redaktor)
		values(    'Persty 2','st Piter ms str  de','812-917-111-3','de2@mos.msk','Pilokin brother PO');
insert into Izdatelstva(name,        address,               phone,      e_mail,              glav_redaktor)
		values(    'Dom','New-york','121-1121-212','de@dddd.com','Tormo LI');



/*                ***                  */
insert into janri(name)
	values('Detective');
insert into janri(name)
	values('Ugasi');
insert into janri(name)
	values('Erotik');
insert into janri(name)
	values('Fantastic');

/*			***			*/

insert into strani(name)
	values('Ukraine');
insert into strani(name)
	values('Russian');
insert into strani(name)
	values('France');
insert into strani(name)
	values('German');
insert into strani(name)
	values('USA');


insert into avtori(fam,    name,otch,	strana_id)
	values(	'Stoikin','Mitya','Sodor',2);
insert into avtori(fam,    name,otch,	strana_id)
	values(	'Petko','Mishko','Ivanovich',1);
insert into avtori(fam,    name,otch,	strana_id)
	values(	'Petrov','Sasha','Colinsov',3);
insert into avtori(fam,    name,otch,	strana_id)
	values(	'Gates','Bill',' ',5);
insert into avtori(fam,    name,otch,	strana_id)
	values(	'Giter','Pol','Don',4);

insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'Kvant no 2',1,	   2,22.2);

insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'Kvant no 1',1,	   2,50.2);
insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'Polihlor',2,	   1,12.45);
insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'Vinil',3,	   3,10.0);
insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'Emanuel in London',3,	   4,80);
insert into knigi(name,		janr_id,avtor_id,cost)
	values(	'tolmut',1,	   4,1.2);


insert into vipusk(kniga_id,col_copies,izd_id,data_vipuska)
	values(	1,	    55000,	   1,'12.01.1989');
insert into vipusk(kniga_id,col_copies,izd_id,data_vipuska)
	values(	2,	    50000,	  2,'1.01.1999');
insert into vipusk(kniga_id,col_copies,izd_id,data_vipuska)
	values(	3,	    100000,	   3,'25.05.2000');
insert into vipusk(kniga_id,col_copies,izd_id,data_vipuska)
	values(	2,	    10000,	   2,'12.02.1990');
insert into vipusk(kniga_id,col_copies,izd_id,data_vipuska)
	values(	4,	    25000,	   4,'1.01.1998');



create view all_vipusk(kniga_name,col_copies,izd_name,data_vipuska) as
select k.name, v.col_copies,i.name,v.data_vipuska 
from izdatelstva i inner join (vipusk v inner join knigi k on k.id=v.kniga_id)
on i.id=v.izd_id;

grant select on all_vipusk  to public;
commit;
