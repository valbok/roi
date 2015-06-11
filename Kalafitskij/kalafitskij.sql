CONNECT 'd:\temp\kalafitskij.GDB' USER "administrator" PASSWORD "p";
DROP DATABASE;

CREATE DATABASE 'd:\temp\kalafitskij.GDB' USER "administrator" PASSWORD "p";

CREATE DOMAIN DPrimKEY AS
	INTEGER NOT NULL;

CREATE DOMAIN Dname AS
	varchar(50) NOT NULL;


CREATE TABLE users (
		kod DPrimKEY,
		lastname dname,
		firstname dname,
		otch dname,
		groupa varchar(20),

		primary key(kod)
		
);

CREATE TABLE types (
		kod DPrimKEY,
		name Dname,
		description varchar(100),

		primary key(kod)
	
);

CREATE TABLE comps (
		kod DPrimKEY,
		name dname,
		num_klass varchar(15),

		primary key(kod)

);

CREATE TABLE files (
		kod DPrimKEY,
		kod_comp integer not null,		
		kod_type integer not null,
		kod_user integer not null,
		fsize DOUBLE PRECISION,
		date_create timestamp,
		date_modific timestamp,
		
		primary key(kod),
	
		FOREIGN KEY (kod_comp) REFERENCES comps (kod),
		FOREIGN KEY (kod_type) REFERENCES types (kod),
		FOREIGN KEY (kod_user) REFERENCES users (kod)

);



CREATE GENERATOR users_GEN_kod;
CREATE GENERATOR types_GEN_kod;
CREATE GENERATOR comps_GEN_kod;
CREATE GENERATOR files_GEN_kod;


SET TERM ^;


CREATE TRIGGER SET_users_GEN_kod FOR users
BEFORE INSERT AS
	BEGIN
		NEW.kod=GEN_ID(users_GEN_kod,1);
	END
^
CREATE TRIGGER SET_types_GEN_kod FOR types
BEFORE INSERT AS
	BEGIN
		NEW.kod=GEN_ID(types_GEN_kod,1);
	END
^


CREATE TRIGGER SET_comps_GEN_kod FOR comps
BEFORE INSERT AS
	BEGIN
		NEW.kod=GEN_ID(comps_GEN_kod,1);
	END
^

create exception EdatE 'Error! modific date can`t be bigger create date'^
CREATE TRIGGER SET_files_GEN_kod FOR files
BEFORE INSERT AS
	BEGIN
		if (NEW.date_create>new.date_modific) then
			exception eDate;
		NEW.kod=GEN_ID(files_GEN_kod,1);
	END
^


SET TERM ;^

commit;
/*===================================*/


/*-------------------Del records----------------------*/

SET TERM ^;

CREATE PROCEDURE deltype
(
	ikod_type integer
)
AS

BEGIN
		delete from files
		where kod_type=:ikod_type;

		delete from types
		where kod=:ikod_type;
END^

SET TERM ;^
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-*/

SET TERM ^;

CREATE PROCEDURE delcomp
(
	ikod_comp integer
)
AS
BEGIN
		delete from files
		where kod_comp=:ikod_comp;

		delete from comps
		where kod=:ikod_comp;
END^

SET TERM ;^
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++-*/

SET TERM ^;

CREATE PROCEDURE deluser
(
	ikod_user integer
)
AS
BEGIN
		delete from files
		where kod_user=:ikod_user;

		delete from users
		where kod=:ikod_user;
END^

SET TERM ;^


grant all on files  to "kala" WITH GRANT OPTION;
grant all on types to "kala" WITH GRANT OPTION;
grant all on users to "kala" WITH GRANT OPTION;
grant all on comps to "kala" WITH GRANT OPTION;

grant all on files  to "administrator" WITH GRANT OPTION;
grant all on types to "administrator" WITH GRANT OPTION;
grant all on users to "administrator" WITH GRANT OPTION;
grant all on comps to "administrator" WITH GRANT OPTION;



grant select on files to public;
grant select on types to public;
grant select on users to public;
grant select on comps to public;


grant delete on users to procedure deluser;
grant delete on types to procedure deltypes;
grant delete on comps to procedure delcomp;

grant delete on files to procedure deluser,deltype,delcomp;


GRANT EXECUTE ON PROCEDURE deluser TO "kala" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delcomp TO "kala" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE deltype TO "kala" WITH GRANT OPTION;

GRANT EXECUTE ON PROCEDURE deluser TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delcomp TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE deltype TO "administrator" WITH GRANT OPTION;

revoke all on files from "one_user";

revoke select on users from "two_user";

commit;

/*--------------------+++++++++++++++------------------*/

insert into users(lastname,firstname,otch,groupa)
	values	('Froleko','Andrej','Vas','341b');
insert into users(lastname,firstname,otch,groupa)
	values	('Smogailo','Nata','S','342b');
insert into users(lastname,firstname,otch,groupa)
	values	('Gubal','C','A','340a');

insert into types(name,description)
	values	('jpgs','image zip format');
insert into types(name,description)
	values	('bmp','not Packed image');
insert into types(name,description)
	values	('tiff','very big format/file');

insert into comps(name,num_klass)
	values	('11','ws25');
insert into comps(name,num_klass)
	values	('10','ws25');
insert into comps(name,num_klass)
	values	('9','ws25');
insert into comps(name,num_klass)
	values	('8','ws25');
insert into comps(name,num_klass)
	values	('7','ws25');
insert into comps(name,num_klass)
	values	('6','ws21');
insert into files(kod_comp,kod_type,kod_user,fsize,date_create,date_modific)
	values(	1,		1,	1,		25.1,'12.12.80','1.5.82');
insert into files(kod_comp,kod_type,kod_user,fsize,date_create,date_modific)
	values(	2,		2,	1,		5.1,'12.1.80','1.5.82');
insert into files(kod_comp,kod_type,kod_user,fsize,date_create,date_modific)
	values(	2,		2,	2,		0.1,'12.12.99','1.5.00');