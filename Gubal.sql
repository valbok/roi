CONNECT 'i:\roi\gubal.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;
/* -----------------------db sklad-------------------------*/
CREATE DATABASE 'i:\roi\gubal.GDB' USER "admin" PASSWORD "1";

CREATE DOMAIN D_P_KEY AS
	INTEGER NOT NULL;

CREATE DOMAIN Domname AS
	varchar(50) NOT NULL;
CREATE DOMAIN D_cost AS
	DOUBLE PRECISION check (value >=0) NOT NULL;


CREATE TABLE tovars (
		code D_P_KEY,
		name domname,
		izmr varchar(18) not null,
		cost_for_one d_cost,
		producer varchar(50),
		primary key(code)
		
);

CREATE TABLE potrebitels (
		code D_P_KEY,
		name Domname,
		adres varchar(50),
		phone varchar(20),
		Comments varchar(50),
		primary key(code)
	
);

CREATE TABLE nakladnies (
		code D_P_KEY,
		dat timestamp,
		potrebitel_code integer not null,
		primary key(code),

		FOREIGN KEY (potrebitel_code) REFERENCES potrebitels (code)

);

CREATE TABLE postavkas (
		code D_P_KEY,
		nakl_code integer not null,		
		tovar_code integer not null,
		col d_cost,
		primary key(code),
	
		FOREIGN KEY (nakl_code) REFERENCES nakladnies (code),
		FOREIGN KEY (tovar_code) REFERENCES tovars (code)

);



CREATE GENERATOR tovars_IDGEN;
CREATE GENERATOR potrebitels_IDGEN;
CREATE GENERATOR nakladnies_IDGEN;
CREATE GENERATOR postavkas_IDGEN;


SET TERM ^;


CREATE TRIGGER SET_tovars_ID FOR tovars
BEFORE INSERT AS
	BEGIN
		NEW.code=GEN_ID(tovars_IDGEN,1);
	END
^
CREATE TRIGGER SET_potrebitels_ID FOR potrebitels
BEFORE INSERT AS
	BEGIN
		NEW.code=GEN_ID(potrebitels_IDGEN,1);
	END
^


CREATE TRIGGER SET_nakladnies_ID FOR nakladnies
BEFORE INSERT AS
	BEGIN
		NEW.code=GEN_ID(nakladnies_IDGEN,1);
	END
^


CREATE TRIGGER SET_postavkas_ID FOR postavkas
BEFORE INSERT AS
	BEGIN
		NEW.code=GEN_ID(postavkas_IDGEN,1);
	END
^


SET TERM ;^
/*--------------------- proc Begin------------------*/
/*------------------------------------------------------*/


/*-------------------Delete records----------------------*/

SET TERM ^;

CREATE PROCEDURE del_tovar
(
	itovar_code integer
)
AS

BEGIN
		delete from postavkas
		where tovar_code=:itovar_code;

		delete from tovars
		where code=:itovar_code;
END^

SET TERM ;^
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-*/

SET TERM ^;

CREATE PROCEDURE del_nakl
(
	inakl_code integer
)
AS
BEGIN
		delete from postavkas
		where nakl_code=:inakl_code;

		delete from nakladnies
		where code=:inakl_code;
END^

SET TERM ;^
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++-*/
SET TERM ^;

CREATE PROCEDURE del_potrebitel
(
	ipotrebitel_code integer
)
AS
	declare variable n_code integer;
BEGIN
		for
			select code from nakladnies
			where potrebitel_code=:ipotrebitel_code
			into :n_code
 		do
 			   if (not(n_code is null)) then
				begin
					execute procedure del_nakl(:n_code);
			      end 
		delete from potrebitels 
		where code=:ipotrebitel_code;
			
END^

SET TERM ;^


grant all on tovars  to "gubal" WITH GRANT OPTION;
grant all on potrebitels to "gubal" WITH GRANT OPTION;
grant all on nakladnies to "gubal" WITH GRANT OPTION;
grant all on postavkas to "gubal" WITH GRANT OPTION;

grant select on tovars to public;
grant select on potrebitels to public;
grant select on nakladnies to public;
grant select on postavkas to public;


grant delete on tovars to procedure del_tovar;
grant delete on potrebitels to procedure del_potrebitel;
grant delete on nakladnies to procedure del_nakl;

grant delete on postavkas to procedure del_tovar,del_nakl;

GRANT EXECUTE ON PROCEDURE del_nakl TO del_potrebitel;



GRANT EXECUTE ON PROCEDURE del_tovar TO "gubal" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE del_potrebitel TO "gubal" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE del_nakl TO "gubal" WITH GRANT OPTION;

revoke all on tovars from "user1";

revoke select on potrebitels from "guest";

commit;

/*--------------------------------------*/

insert into potrebitels(name,adres,			phone,comments)
	values		('OoK','st 12 odessa','7313131','Telemat');
insert into potrebitels(name,adres,			phone,comments)
	values		('Sop','st odessa','731-31-11','Telnet');
insert into potrebitels(name,adres,			phone,comments)
	values		('Te.net','arnauts 29a','1068','Te.net.ua');

insert into tovars(name,	izmr,cost_for_one,producer)
	values	('Bublik','sht',12.8,'TeKila');
insert into tovars(name,	izmr,cost_for_one,producer)
	values	('provolka','m',1.0,'OoO kOlins');

insert into nakladnies(dat,potrebitel_code)
	values	('12.12.99',1);
insert into nakladnies(dat,potrebitel_code)
	values	('11.12.99',1);
insert into nakladnies(dat,potrebitel_code)
	values	('1.1.99',2);
insert into nakladnies(dat,potrebitel_code)
	values	('2.1.97',2);

insert into postavkas(nakl_code,tovar_code,col)
	values	(1,1,23);
insert into postavkas(nakl_code,tovar_code,col)
	values	(2,1,55);
insert into postavkas(nakl_code,tovar_code,col)
	values	(1,2,12.1);

