CONNECT 'd:\bruchkus.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'd:\bruchkus.GDB' USER "admin" PASSWORD "1";

CREATE DOMAIN DPrimary_Key AS
	INTEGER NOT NULL;

CREATE DOMAIN D_name AS
	varchar(120) NOT NULL;
CREATE DOMAIN D_cost AS
	DOUBLE PRECISION check (value >=0) NOT NULL;

CREATE TABLE vidi (
		ID DPrimary_KEY,
		name D_name,
		primary key(id),
		CONSTRAINT cv_name unique (name)
		
);

CREATE TABLE formi_sobstvennosti (
		ID DPrimary_KEY,
		name D_name,
		primary key(id),
		CONSTRAINT cf_name unique (name)
);

CREATE TABLE izgotoviteli (
		ID DPrimary_KEY,
		name D_name,
		address varchar(200),

		forma_sob_id integer,
		face varchar(100),
		telephone varchar(100),
		e_mail varchar(100),

		primary key(id),

		CONSTRAINT fk_izgotoviteli_forma_id
		FOREIGN KEY (forma_sob_id) REFERENCES formi_sobstvennosti (ID)

);


CREATE TABLE izdeliya (
		ID DPrimary_KEY,
		name D_name,
		vid_id integer,
		unit_izmr varchar(20),
		cost_for_one d_cost,
		izgotovitel_id integer not null,

		primary key(id),

		CONSTRAINT fk_izdeliya_vid_id
		FOREIGN KEY (vid_id) REFERENCES vidi (ID),

		CONSTRAINT fk_izdeliya_izgotovitel_id
		FOREIGN KEY (izgotovitel_id) REFERENCES  izgotoviteli(ID)


);


CREATE GENERATOR vidi_ID_GEN;
CREATE GENERATOR formi_sobstvennosti_id_gen;
CREATE GENERATOR izgotoviteli_ID_GEN;
CREATE GENERATOR izdeliya_ID_GEN;


SET TERM ^;


CREATE TRIGGER SET_vidi_ID_GEN FOR vidi
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(vidi_ID_GEN,1);
	END
^
CREATE TRIGGER SET_formi_sobstvennosti_id FOR formi_sobstvennosti
BEFORE INSERT AS
	BEGIN
		NEW.id=GEN_ID(formi_sobstvennosti_id_gen,1);
	END
^


CREATE TRIGGER SET_izgotoviteli_ID FOR izgotoviteli
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(izgotoviteli_ID_GEN,1);
	END
^


CREATE TRIGGER SET_izdeliya_ID FOR izdeliya
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(izdeliya_ID_GEN,1);
	END
^

SET TERM ;^




/*---------------------------Delete izdelie-----------------------*/
CREATE EXCEPTION izdelie_NOT_exists 'Ошибка! Такого изделия не существует в таблице ИЗДЕЛИЯ.';

SET TERM ^;

CREATE PROCEDURE delete_izdelie
(
	iizdelie_id integer
)
AS
	DECLARE VARIABLE izdel_ID integer;

	DECLARE VARIABLE vipusk_ID integer;

BEGIN

	select id from izdeliya
	where id =:iizdelie_id
	into :izdel_id;
		if (izdel_id is null) then  
			begin
				exception izdelie_not_exists;
			end else
			begin
				delete from izdeliya 
				where id=:izdel_id;
				/*del izdel*/
			
			end
END^

SET TERM ;^

/*------------------ Delete vidi ---------Begin-----*/

CREATE EXCEPTION vidi_NOT_exists 'Ошибка! Такого вида не существует в таблице ВИДЫ .';

SET TERM ^;

CREATE PROCEDURE delete_vid
(
	ivid_name varchar(100)
)
AS
	DECLARE VARIABLE vvid_ID integer;
	DECLARE VARIABLE izd_ID integer;
BEGIN

	select id from vidi
	where name =:ivid_name
	into :vvid_id;
		if (vvid_id is null) then  
			begin
				exception vidi_not_exists;
			end else
			begin
					for
						select id from izdeliya
						where vid_id=:vvid_id
						into :izd_id
 					do
 						   if (not(izd_id is null)) then
							begin
								update izdeliya
								set vid_id=null
								where id=:izd_id;
						      end  
								
			delete from vidi
			where id=:vvid_id;
			
			end
END^

SET TERM ;^


/*------------------ Delete izgotov -------Begin-------*/

CREATE EXCEPTION izgotovitel_NOT_exists 'Ошибка! Такого изготовителя не существует в таблице ИЗГОТОВИТЕЛИ.';

SET TERM ^;

CREATE PROCEDURE delete_izgotovitel
(
	iizgotovitel_id integer
)
AS
	DECLARE VARIABLE izg_id integer;

	DECLARE VARIABLE izd_ID integer;

BEGIN

	select id from izgotoviteli
	where id =:iizgotovitel_id
	into :izg_id;
		if (izg_id is null) then  
			begin
				exception izgotovitel_not_exists;
			end else
			begin
					for
						select id from izdeliya
						where izgotovitel_id=:izg_id
						into :izd_id
 					do
 						   if (not(izd_id is null)) then
							begin
								delete from izdeliya
								where id=:izd_id;
						      end  
								
			delete from izgotoviteli 
			where id=:izg_id;
			
			end
END^

SET TERM ;^


/*------------------ Delete formi --------------*/

CREATE EXCEPTION forma_NOT_exists 'Ошибка! Такой формы собственности в таблице ФОРМЫ СОБСТВЕННОСТИ не существует.';

SET TERM ^;

CREATE PROCEDURE delete_forma_sobstvennosti
(
	iforma_name varchar(120)
)
AS
	DECLARE VARIABLE forma_ID integer;

	DECLARE VARIABLE izg_ID integer;
BEGIN

	select id from formi_sobstvennosti
	where name =:iforma_name
	into :forma_id;
		if (forma_id is null) then  
			begin
				exception forma_not_exists;
			end else
			begin
					for
						select id from izgotoviteli
						where forma_sob_id=:forma_id
						into :izg_id
 					do
 						   if (not(izg_id is null)) then
							begin

								update izgotoviteli
								set forma_sob_id=null
								where id=:izg_id;
	
						      end  
						
								
			delete from formi_sobstvennosti 
			where id=:forma_id;
		
			end
END^

SET TERM ;^



grant all on vidi  to "admin" WITH GRANT OPTION;
grant all on formi_sobstvennosti  to "admin" WITH GRANT OPTION;
grant all on izgotoviteli  to "admin" WITH GRANT OPTION;
grant all on izdeliya to "admin" WITH GRANT OPTION;

grant select on vidi to public;
grant select on formi_sobstvennosti to public;
grant select on izgotoviteli to public;
grant select on izdeliya to public;

grant delete on vidi to procedure delete_vid;
grant delete on formi_sobstvennosti to procedure delete_forma_sobstvennosti;
grant delete on izgotoviteli to procedure delete_izgotovitel;
grant delete on izdeliya to procedure delete_izdelie;

grant delete on izdeliya to procedure delete_izgotovitel;

grant update on izdeliya to procedure delete_vid;
grant update on izgotoviteli to procedure delete_forma_sobstvennosti;


GRANT EXECUTE ON PROCEDURE delete_vid TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_forma_sobstvennosti TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_izgotovitel TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_izdelie TO "admin" WITH GRANT OPTION;


revoke all on izdeliya from "Luda";

revoke select on izgotoviteli from "guest";

commit;

/*--------------------------------------*/
insert into vidi(name)
	values('Pirog');
insert into vidi(name)
	values('Muchnoe');
insert into vidi(name)
	values('Tort');
insert into vidi(name)
	values('desert');

insert into formi_sobstvennosti(name)
	values('OAO');
insert into formi_sobstvennosti(name)
	values('ZAO');
insert into formi_sobstvennosti(name)
	values('AO');
insert into formi_sobstvennosti(name)
	values('OoO');
insert into formi_sobstvennosti(name)
	values('ODO');
insert into formi_sobstvennosti(name)
	values('OPO');

insert into izgotoviteli(name,address,		forma_sob_id,face,telephone,e_mail)
	values(		'Krai','Odessa str prim 2',1,        'Tolin DF','341114','sobaka@yandex.ru');
insert into izgotoviteli(name,address,		forma_sob_id,face,telephone,e_mail)
	values(		'FOZZY','Odessa FRUNZE 22',2,        'Polishuck Dd','731-1114','fozzy@od.ua');
insert into izgotoviteli(name,address,		forma_sob_id,face,telephone,e_mail)
	values(		'torki CO','str novoselskogo',4,     'Sorokin','1068','sorokin@unk.net');


insert into izdeliya(name, vid_id,unit_izmr,cost_for_one,izgotovitel_id)
		values('Pirog1',1,     'sht',    5.32,       1);
insert into izdeliya(name,              vid_id,unit_izmr,cost_for_one,izgotovitel_id)
		values('Pirog 2 po SPANISH',1,     'sht',    8.32,       2);
insert into izdeliya(name, vid_id,unit_izmr,cost_for_one,izgotovitel_id)
		values('Kievskiy',2,     'kg',    18.2,       3);
insert into izdeliya(name, vid_id,unit_izmr,cost_for_one,izgotovitel_id)
		values('Araxis',3,     'kg',    0.2,       1);



create view all_izdeliya as
select * from izdeliya;

create view all_izgitoviteli as
select * from izgotoviteli;

grant select on all_izdeliya to public;
grant select on all_izgitoviteli to public;

commit;