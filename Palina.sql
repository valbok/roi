CONNECT 'd:\temp\palina.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'd:\temp\palina.GDB' USER "admin" PASSWORD "1";

CREATE DOMAIN D_PRIM_KEY AS
	INTEGER NOT NULL;

CREATE DOMAIN D_name AS
	varchar(40) NOT NULL;


CREATE TABLE nauch_napravs (
		ID D_PRIM_KEY,
		name D_name,

		primary key(id),
		CONSTRAINT cnn_name unique (name)
		
);
CREATE TABLE kafedri (
		ID D_PRIM_KEY,
		name D_name,

		primary key(ID),
		CONSTRAINT ck_name unique (name)
		
);

CREATE TABLE prepods (
		ID D_PRIM_KEY,
		fam D_name,		
		name D_name,
		otch varchar(40),
		bdate timestamp,
		education varchar(50),
		u_step varchar(30),
		dolgn	varchar(50),

		kafedra_id integer,
		nauch_naprav_id integer,
		primary key(id),

		CONSTRAINT fk_prep_kaferda_id
		FOREIGN KEY (kafedra_id) REFERENCES kafedri (ID),

		CONSTRAINT fk_prep_nn_id
		FOREIGN KEY (nauch_naprav_id) REFERENCES nauch_napravs(id)
);
CREATE TABLE types_izds (
		ID D_PRIM_KEY,
		name D_name,
		PRIMARY KEY (ID),
		CONSTRAINT ctype_izd_name unique (name)
);


CREATE TABLE izdaniya (
		ID D_PRIM_KEY,
		name D_name,
		type_izd_id integer,
		izdatelstvo varchar(70),
		god_izd integer,
		PRIMARY KEY (ID),
		CONSTRAINT ci_name unique (name),

		CONSTRAINT fk_izd_type_izd_id
		FOREIGN KEY (type_izd_id) REFERENCES types_izds(id)

);

CREATE TABLE avtorstvo (
		id D_PRIM_KEY,
		prepod_id integer not null,
		izd_id integer not null,
		PRIMARY KEY (id),

		CONSTRAINT fk_prepod_id
		FOREIGN KEY (prepod_id) REFERENCES prepods(id),
		CONSTRAINT fk_izd_id		
		FOREIGN KEY (izd_id) REFERENCES izdaniya(id)
);



CREATE GENERATOR nauch_napravs_ID_GEN;
CREATE GENERATOR kafedri_ID_GEN;
CREATE GENERATOR prepods_ID_GEN;
CREATE GENERATOR types_izds_ID_GEN;
CREATE GENERATOR izdaniya_id_GEN;
CREATE GENERATOR avtorstvo_id_GEN;


SET TERM ^;


CREATE TRIGGER SET_nauch_napravs_ID FOR nauch_napravs
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(nauch_napravs_ID_GEN,1);
	END
^
CREATE TRIGGER SET_kafedri_ID FOR kafedri
BEFORE INSERT AS
	BEGIN
		NEW.id=GEN_ID(kafedri_ID_GEN,1);
	END
^


CREATE TRIGGER SET_prepods_ID FOR prepods
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(prepods_ID_GEN,1);
	END
^


CREATE TRIGGER SET_types_izds_ID FOR types_izds
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(types_izds_ID_GEN,1);
	END
^

CREATE TRIGGER SET_izdaniya_id FOR izdaniya
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(izdaniya_id_GEN,1);
	END
^

CREATE TRIGGER SET_avtorstvo_id FOR avtorstvo
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(avtorstvo_id_GEN,1);
	END
^

SET TERM ;^
/*--------------------- procs Begin------------------*/

CREATE EXCEPTION prepod_NOT_exists 'Ошибка! Такого преродавателя не существует.';

SET TERM ^;

create procedure izdaniya_by_prepod
(
	iprepod_id integer
) 
 returns
(
 	rId integer,
 	rName varchar(40),
	rType_izd varchar(40),
	rIzdatelstvo varchar(70),
	rGod_izd integer
)
AS
	DECLARE VARIABLE p_ID integer;

	DECLARE VARIABLE avtorstvo_ID integer;

BEGIN
	select id from prepods
	where id =:iprepod_id
	into :p_id;
		if (p_id is null) then  
			begin
				exception prepod_not_exists;
			end else
			begin
			for
				select i.id, i.name,t.name,i.izdatelstvo,i.god_izd
				from avtorstvo a inner join (izdaniya i left join types_izds t on i.type_izd_id=t.id)
					on a.izd_id=i.id
				where a.prepod_id=:p_id
				into	:rId,
					:rName,
					:rType_izd,
					:rIzdatelstvo, 
					:rGod_izd
			do
				suspend;

			end


END^

SET TERM ;^

CREATE EXCEPTION izd_NOT_exists 'Ошибка! Такого издания не существует.';


SET TERM ^;

create procedure prepods_by_izdanie
(
	iizdanie_id integer
) 
 returns
(
 	rId integer,
 	rFam varchar(40),
 	rName varchar(40),
 	rOtch varchar(40),
 	rbDate timestamp,
 	reducation varchar(50),
	ru_step varchar(30),
	rdolgn	varchar(50),
	rkafedra_id integer,
 	rnauch_naprav_id integer

)
AS
	DECLARE VARIABLE p_ID integer;
	DECLARE VARIABLE izd_ID integer;


	DECLARE VARIABLE avtorstvo_ID integer;

BEGIN
	select id from izdaniya
	where id =:iizdanie_id
	into :izd_id;
		if (izd_id is null) then  
			begin
				exception Izd_not_exists;
			end else
			begin
			for
				select 	p.id,
						p.fam,
						p.name,
						p.otch,
						p.bdate,
						p.education,
						p.u_step,
						p.dolgn,
						p.kafedra_id,
						p.nauch_naprav_id
				from izdaniya i inner join (avtorstvo a inner join prepods p on a.prepod_id=p.id) on i.id=a.izd_id
				where i.id=:izd_id
				into	:rId,
				 	:rFam,
				 	:rName,
				 	:rOtch,
				 	:rbDate,
				 	:reducation,
					:ru_step,
					:rdolgn,
					:rkafedra_id,
				 	:rnauch_naprav_id
			do
				suspend;

			end


END^

SET TERM ;^


/*-------------------Delete records*/

/*---------------------------Delete prepod-----------------------*/

SET TERM ^;

CREATE PROCEDURE delete_prepod
(
	iprepod_id integer
)
AS
	DECLARE VARIABLE p_ID integer;

	DECLARE VARIABLE avtorstvo_ID integer;

BEGIN

	select id from prepods
	where id =:iprepod_id
	into :p_id;
		if (p_id is null) then  
			begin
				exception prepod_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на комandy*/
					for
						select id from avtorstvo
						where prepod_id=:p_id
						into :avtorstvo_id
 					do
 						   if (not(avtorstvo_id is null)) then
							begin
							  delete from avtorstvo
							  where id=:avtorstvo_id;
						      end /* =====del avtorstvo========*/
			delete from prepods 
			where id=:p_id;
				/*del prepoda*/
			
			end
END^

SET TERM ;^
/* =================Delete prepod end -----------*/

/*------------------ Delete nauch_napravs ---------Begin-----*/

CREATE EXCEPTION naprav_NOT_exists 'Ошибка! Такого научного направления не существует.';

SET TERM ^;

CREATE PROCEDURE delete_nauch_naprav
(
	inaprav_name varchar(40)
)
AS
	DECLARE VARIABLE naprav_ID integer;
	DECLARE VARIABLE prepod_ID integer;
BEGIN

	select id from nauch_napravs
	where name =:inaprav_name
	into :naprav_id;
		if (naprav_id is null) then  
			begin
				exception naprav_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на naprav*/
					for
						select id from prepods
						where nauch_naprav_id=:naprav_id
						into :prepod_id
 					do
 						   if (not(prepod_id is null)) then
							begin
							      update prepods
								set nauch_naprav_id = null
								where id=:prepod_id;
						      end  
							/* =====prepods----------*/
								
			delete from nauch_napravs
			where id=:naprav_id;
			
			end
END^

SET TERM ;^

/*-------------------------DElete napravs END----*/

/*------------------ Delete kaferdra -------Begin-------*/

CREATE EXCEPTION kafedra_NOT_exists 'Ошибка! Такой кафедры не существует.';

SET TERM ^;

CREATE PROCEDURE delete_kafedra
(
	ikafedra_name varchar(40)
)
AS
	DECLARE VARIABLE vkafedra_ID integer;

	DECLARE VARIABLE prepod_ID integer;

BEGIN

	select id from kafedri
	where name =:ikafedra_name
	into :vkafedra_id;
		if (vkafedra_id is null) then  
			begin
				exception kafedra_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на kafedry*/
					for
						select id from prepods
						where kafedra_id=:vkafedra_id
						into :prepod_id
 					do
 						   if (not(prepod_id is null)) then
							begin
							      update prepods
								set kafedra_id = null
								where id=:prepod_id;
						      end  
							/* =====prepods---------*/
								
			delete from kafedri 
			where id=:vkafedra_id;
			
			end
END^

SET TERM ;^

/*-----------------------Delete Kafedra END------*/

/*------------------ Delete izdaniya --------------*/



SET TERM ^;

CREATE PROCEDURE delete_izdanie
(
	iizd_id integer
)
AS
	DECLARE VARIABLE vizd_ID integer;

	DECLARE VARIABLE avtorstvo_ID integer;

BEGIN

	select id from izdaniya
	where id =:iizd_id
	into :vizd_id;
		if (vizd_id is null) then  
			begin
				exception izd_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на izd*/
					for
						select id from avtorstvo
						where izd_id=:vizd_id
						into :avtorstvo_id
 					do
 						   if (not(avtorstvo_id is null)) then
							begin
								delete from avtorstvo
								where id=:avtorstvo_id;
						      end  
							/* =====avtorstvo----------*/
								
			delete from izdaniya 
			where id=:vizd_id;
			
			end
END^

SET TERM ;^

/*------------------Delete Izd END-----------*/


/*------------------ Delete Avtorstvo --------------*/

CREATE EXCEPTION avtorstvo_NOT_exists 'Ошибка! Такого автораства не существует.';

SET TERM ^;

CREATE PROCEDURE delete_avtorstvo
(
	iavtorstvo_id integer
)
AS
	DECLARE VARIABLE avtor_ID integer;
BEGIN

	select id from avtorstvo
	where id =:iavtorstvo_id
	into :avtor_id;
		if (avtor_id is null) then  
			begin
				exception avtorstvo_not_exists;
			end else
			begin
				delete from avtorstvo 
				where id=:avtor_id;
			
			end
END^

SET TERM ;^

/*----------------------Delete Avtorstvo End-------*/

/*------------------ Delete type_izd --------------*/

CREATE EXCEPTION type_NOT_exists 'Ошибка! Такого типа издания не существует.';

SET TERM ^;

CREATE PROCEDURE delete_type_izd
(
	itype_izd integer
)
AS
	DECLARE VARIABLE vtype_ID integer;
	DECLARE VARIABLE vizd_ID integer;


BEGIN

	select id from types_izds
	where id =:itype_izd
	into :vtype_id;
		if (vtype_id is null) then  
			begin
				exception type_not_exists;
			end else
			begin
				/*Проверка есть ли в других таблицах ссылки на types*/
					for
						select id from izdaniya
						where type_izd_id=:vtype_id
						into :vizd_id
 					do
 						   if (not(vizd_id is null)) then
							begin
							      update izdaniya
								set type_izd_id = null
								where id=:vizd_id;
						      end  
							/* =====izds----------*/
									
				delete from types_izds 
				where id=:vtype_id;
			
			end
END^

SET TERM ;^

/*----------------------Delete type End-------*/


grant all on nauch_napravs to "admin" WITH GRANT OPTION;

grant all on kafedri to "admin" WITH GRANT OPTION;
grant all on prepods to "admin" WITH GRANT OPTION;
grant all on types_izds to "admin" WITH GRANT OPTION;
grant all on izdaniya to "admin" WITH GRANT OPTION;
grant all on avtorstvo to "admin" WITH GRANT OPTION;

grant select on nauch_napravs to public;
grant select on kafedri to public;
grant select on prepods to public;
grant select on types_izds to public;
grant select on izdaniya to public;
grant select on avtorstvo to public;

grant delete on nauch_napravs to procedure delete_nauch_naprav;
grant delete on kafedri to procedure delete_kafedra;
grant delete on prepods to procedure delete_prepod;
grant delete on types_izds to procedure delete_type_izd;
grant delete on izdaniya to procedure delete_izdanie;
grant delete on avtorstvo to procedure delete_avtorstvo;

grant update on prepods to procedure delete_nauch_naprav,delete_kafedra;

grant delete on avtorstvo to procedure delete_prepod,delete_izdanie;

grant update on izdaniya to procedure delete_type_izd;


GRANT EXECUTE ON PROCEDURE delete_prepod TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_nauch_naprav TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_kafedra TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_izdanie TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_avtorstvo TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_type_izd TO "admin" WITH GRANT OPTION;

revoke all on nauch_napravs from "user";
revoke all on kafedri from "user";
revoke all on prepods from "user";
revoke all on types_izds from "user";
revoke all on izdaniya from "user";
revoke all on avtorstvo from "user";

revoke select on nauch_napravs from "guest";
revoke select on kafedri from "guest";
revoke select on prepods from "guest";
revoke select on types_izds from "guest";
revoke select on izdaniya from "guest";
revoke select on avtorstvo from "guest";

commit;

/*--------------------------------------*/

insert into nauch_napravs(name)
	values('OBDZ');
insert into nauch_napravs(name)
	values('ZRSYBD');
insert into nauch_napravs(name)
	values('Phiziks');
insert into nauch_napravs(name)
	values('Programming');
insert into nauch_napravs(name)
	values('theaching');
insert into nauch_napravs(name)
	values('socium');
insert into nauch_napravs(name)
	values('ASC');

/*                ***                  */
insert into kafedri(name)
	values('IIT');
insert into kafedri(name)
	values('INT');
insert into kafedri(name)
	values('ITF');
insert into kafedri(name)
	values('IEM');
insert into kafedri(name)
	values('FAVT');
/*			***			*/


insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Potemkin','Alex','Uriev','11.2.1980','high',	'ktn',  'docent',1,3);

insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Zhdanovich','Kostya','Kolev','1.12.1983','high',	'dtn',  'high prepod',1,2);

insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Tkach','Sonya','Ko','1.1.1982',       'high',	'empty', 'low prepod',2,1);
insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Sonceva','Tanya','Valentinovna','5.9.1975','high',	'dtn',  'docent',2,2);
insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Pexeleva','Olya','Andreevna','3.03.1979','middle',	' ',  'prepod',3,3);
insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Frolenko','Andrey','Vasil','19.8.1982','high',	'ktn',  'high prepod',4,4);
insert into prepods(fam,name,		 otch, bdate,	   education,u_step,dolgn,kafedra_id,nauch_naprav_id)
		values('Kovalchuk','Andrey','S','11.09.1981','high',	'high dtn',  'zavkaf',5,4);

insert into types_izds(name)
		values('Nauch');
insert into types_izds(name)
		values('detective');
insert into types_izds(name)
		values('commedy');
insert into types_izds(name)
		values('somthing');
insert into types_izds(name)
		values('okkultizm');

insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('Problems tranzactions',1,'Sydoxodstvo',1999);
insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('Problems internet security',1,'Sydoxodstvo',1998);
insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('Standard hope',2,'UG',2000);
insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('pixel and graphic',3,'OIL std',1992);
insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('Solution Modeling librery. mrCrowely',4,'Sydvo',2003);
insert into izdaniya(name,type_izd_id,	izdatelstvo, god_izd)
		values('Hacking system blokink',3,'Micro',2000);


insert into avtorstvo(prepod_id,izd_id)
	values(1,2);
insert into avtorstvo(prepod_id,izd_id)
	values(1,1);
insert into avtorstvo(prepod_id,izd_id)
	values(2,2);
insert into avtorstvo(prepod_id,izd_id)
	values(2,3);

insert into avtorstvo(prepod_id,izd_id)
	values(3,3);
insert into avtorstvo(prepod_id,izd_id)
	values(4,2);

create view all_prepods_without_u_step as
select * from prepods
where u_step is null;

create view all_avtorstvo(id,fam,name,izdanie) as
select p.id,p.fam,p.name,i.name 
from prepods p inner join (avtorstvo a inner join izdaniya i on i.id=a.izd_id)
		on p.id=a.prepod_id;

grant select on all_prepods_without_u_step to public;
grant select on all_avtorstvo to public;
commit;
