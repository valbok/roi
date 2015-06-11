CONNECT 'd:\troyanenko.GDB' USER "administrator" PASSWORD "p";
DROP DATABASE;

CREATE DATABASE 'd:\troyanenko.GDB' USER "administrator" PASSWORD "p";

CREATE DOMAIN D_Prim_KEY AS
	INTEGER NOT NULL;

CREATE DOMAIN Dom_name AS
	varchar(50) NOT NULL;

CREATE DOMAIN Dom_cost AS
	DOUBLE PRECISION check (value >=0);

CREATE DOMAIN Dom_col AS
	DOUBLE PRECISION check (value >=0);

CREATE DOMAIN Dom_rashod AS
	DOUBLE PRECISION  check (value >=0);

CREATE DOMAIN Ddate_zakaz AS
	timestamp  ;


CREATE TABLE vidi (
		ID D_Prim_KEY,
		name Dom_name,
		primary key(id),
		CONSTRAINT cvidi_name unique (name)
);

CREATE TABLE izdeliya (
		ID D_Prim_KEY,
		name Dom_name,
		cost_poshiva dom_cost,
		vid_modeli varchar(50),
		
		primary key(id)
);

CREATE TABLE rask_tk (
		ID D_Prim_KEY,
		izdelie_id integer not null,
		razmer varchar(30),
		rashod dom_rashod,
		primary key(id),

		CONSTRAINT fk_izdelie_id
		FOREIGN KEY (izdelie_id) REFERENCES izdeliya (ID)

);
CREATE TABLE tkani (
		ID D_Prim_KEY,
		vid_id integer,
		color varchar(30),
		cost_for_1m dom_cost,
		proizvoditel varchar(200),

		primary key(id),
		
		CONSTRAINT fk_vid_id
		FOREIGN KEY (vid_id) REFERENCES vidi (ID)

);

CREATE TABLE zakazchiki (
		ID D_Prim_KEY,
		name dom_name,
		address varchar(100),
		telephone varchar(50),

		primary key(id),

		CONSTRAINT zakazchiki_name unique (name)
);

CREATE TABLE zakazi (
		ID D_Prim_KEY,
		zakazchik_id integer not null,
		izdelie_id integer not null,
		tkan_id integer,
		col dom_col,
		razmer varchar(50),
		data_zakaza ddate_zakaz,
		srok_vipolneniya varchar(50),

		primary key(id),
		CONSTRAINT fk_z_zakazchik_id
			FOREIGN KEY (zakazchik_id) REFERENCES zakazchiki(ID),
		CONSTRAINT fk_z_izdelie_id
			FOREIGN KEY (izdelie_id) REFERENCES izdeliya (ID),
		CONSTRAINT fk_z_tkan_id
			FOREIGN KEY (tkan_id) REFERENCES tkani (ID)

);


CREATE GENERATOR vidi_ID_GEN;
CREATE GENERATOR izdeliya_ID_GEN;
CREATE GENERATOR rask_tk_ID_GEN;
CREATE GENERATOR tkani_ID_GEN;
CREATE GENERATOR zakazchiki_id_GEN;
CREATE GENERATOR zakazi_id_GEN;


SET TERM ^;


CREATE TRIGGER SET_vidi_ID FOR vidi
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(vidi_ID_GEN,1);
	END
^
CREATE TRIGGER SET_izdeliya_ID FOR izdeliya
BEFORE INSERT AS
	BEGIN
		NEW.id=GEN_ID(izdeliya_ID_GEN,1);
	END
^


CREATE TRIGGER SET_rask_tk_ID FOR rask_tk
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(rask_tk_ID_GEN,1);
	END
^


CREATE TRIGGER SET_tkani_ID FOR tkani
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(tkani_ID_GEN,1);
	END
^

CREATE TRIGGER SET_zakazchiki_id FOR zakazchiki
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(zakazchiki_id_GEN,1);
	END
^

CREATE TRIGGER SET_zakazi_id FOR zakazi
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(zakazi_id_GEN,1);
	END
^

SET TERM ;^

CREATE EXCEPTION izdelie_NOT_exists 'Error! izdelie not exist';

SET TERM ^;

CREATE PROCEDURE delete_izdelie
(
	iizdelie_id integer
)
AS
	DECLARE VARIABLE izd_ID integer;

BEGIN

	select id from izdeliya
	where id =:iizdelie_id
	into :izd_id;
		if (izd_id is null) then  
			begin
				exception izdelie_not_exists;
			end else
			begin
				delete from rask_tk
				where izdelie_id=:izd_id;

				delete from zakazi
				where izdelie_id=:izd_id;

				/*----------------------*/
				delete from izdeliya 
				where id=:iizdelie_id;
			end
END^

SET TERM ;^


CREATE EXCEPTION vid_NOT_exists 'Error! VID Not exist';

SET TERM ^;

CREATE PROCEDURE delete_vid
(
	ivid_id integer
)
AS
	DECLARE VARIABLE v_ID integer;
BEGIN

	select id from vidi
	where id =:ivid_id
	into :v_id;
		if (v_id is null) then  
			begin
				exception vid_not_exists;
			end else
			begin
				update tkani
				set vid_id=null
				where vid_id=:v_id;
								
			delete from vidi
			where id=:v_id;
			
			end
END^

SET TERM ;^


CREATE EXCEPTION tkan_NOT_exists 'Error! tkan not exist';

SET TERM ^;

CREATE PROCEDURE delete_tkan
(
	itkan_id integer
)
AS
	DECLARE VARIABLE t_ID integer;

BEGIN

	select id from tkani
	where id =:itkan_id
	into :t_id;
		if (t_id is null) then  
			begin
				exception tkan_not_exists;
			end else
			begin
				update zakazi	
				set tkan_id = null
				where tkan_id=:t_id;
		
				delete from tkani 
				where id=:t_id;
			
			end
END^

SET TERM ;^


CREATE EXCEPTION zakazchik_NOT_exists 'Error! Zakazchik not exist';

SET TERM ^;

CREATE PROCEDURE delete_zakazchik
(
	izakazchik_id integer
)
AS
	DECLARE VARIABLE z_ID integer;
BEGIN

	select id from zakazchiki
	where id =:izakazchik_id
	into :z_id;
		if (z_id is null) then  
			begin
				exception zakazchik_not_exists;
			end else
			begin
				delete from zakazi
				where zakazchik_id=:z_id;
		
				delete from zakazchiki 
				where id=:z_id;
		
			end
END^

SET TERM ;^


CREATE EXCEPTION zakaz_NOT_exists 'Error! zakaz not exist';

SET TERM ^;

CREATE PROCEDURE delete_zakaz
(
	izakaz_id integer
)
AS
	DECLARE VARIABLE z_ID integer;
BEGIN

	select id from zakazi
	where id =:izakaz_id
	into :z_id;
		if (z_id is null) then  
			begin
				exception zakaz_not_exists;
			end else
			begin
				
				delete from zakazi
				where id=:z_id;
			end
END^

SET TERM ;^


CREATE EXCEPTION rask_NOT_exists 'Error! Rashod not exist';

SET TERM ^;

CREATE PROCEDURE delete_rask
(
	irask_id integer
)
AS
	DECLARE VARIABLE r_ID integer;

BEGIN

	select id from rask_tk
	where id =:irask_id
	into :r_id;
		if (r_id is null) then  
			begin
				exception rask_not_exists;
			end else
			begin
				delete from rask_tk
				where id=:r_id;
			
			end
END^

SET TERM ;^

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

grant all on vidi to "administrator" WITH GRANT OPTION;
grant all on izdeliya to "administrator" WITH GRANT OPTION;
grant all on rask_tk  to "administrator" WITH GRANT OPTION;
grant all on tkani to "administrator" WITH GRANT OPTION;
grant all on zakazchiki to "administrator" WITH GRANT OPTION;
grant all on zakazi to "administrator" WITH GRANT OPTION;


grant select on vidi  to public;
grant select on izdeliya to public;
grant select on rask_tk to public;
grant select on tkani to public;
grant select on zakazchiki to public;
grant select on zakazi to public;

grant delete on vidi to procedure delete_vid;
grant delete on izdeliya to procedure delete_izdelie;
grant delete on rask_tk to procedure delete_rask;
grant delete on tkani to procedure delete_tkan;
grant delete on zakazchiki to procedure delete_zakazchik;
grant delete on zakazi to procedure delete_zakaz;

grant delete on rask_tk to procedure delete_izdelie;

grant delete on zakazi to procedure delete_zakazchik,delete_izdelie;

grant update on tkani to procedure delete_vid;

grant update on zakazi to procedure delete_tkan;


GRANT EXECUTE ON PROCEDURE delete_vid TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_izdelie TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_rask TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_tkan TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_zakazchik TO "administrator" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_zakaz TO "administrator" WITH GRANT OPTION;

revoke all on zakazi from "user_num";
revoke select on Izdeliya from "user_num";

revoke select on vidi from "Andrej";
revoke select on rask_tk from "Andrej";
revoke select on zakazchiki from "Andrej";


commit;

/*--------------------------------------*/
insert into vidi(name)
	values('Tool');
insert into vidi(name)
	values('somthing');
insert into vidi(name)
	values('coolinz');
insert into vidi(name)
	values('Sombody forever');

insert into izdeliya(name,cost_poshiva, vid_modeli)
	values	('Solo is dors',21.1,'Pixels sondering');
insert into izdeliya(name,cost_poshiva, vid_modeli)
	values	('Kimano',99.8,'classic');
insert into izdeliya(name,cost_poshiva, vid_modeli)
	values	('fruck',127.32,'novogodnij');
insert into izdeliya(name,cost_poshiva, vid_modeli)
	values	('platie',122.2,'tolmuting');

insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(1,'red',32.1,'VID std');
insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(1,'green',99.1,'std account');
insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(2,'blue',32.8,'VID std');
insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(3,'red',2.1,'std a');
insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(2,'red',3.2,'soloe');
insert into tkani(vid_id,color,cost_for_1m,proizvoditel)
	values(3,'yellow',4.0,'stPOL');

insert into rask_tk(izdelie_id,razmer,rashod)
	values(1,			'78x54',22.9);
insert into rask_tk(izdelie_id,razmer,rashod)
	values(2,			'7x5',2.9);
insert into rask_tk(izdelie_id,razmer,rashod)
	values(3,			'88x55',99.1);
insert into rask_tk(izdelie_id,razmer,rashod)
	values(2,			'7x2',0.9);

insert into zakazchiki(name,	address,telephone)
	values(		'FRolya','str FReeze as12','789-456023');
insert into zakazchiki(name,	address,telephone)
	values(		'Valenkov','Tairova 2','7311111');
insert into zakazchiki(name,	address,telephone)
	values(		'toniKK','dukovskij','044 067 7771068');


insert into zakazi(zakazchik_id,izdelie_id,tkan_id,col,razmer,data_zakaza,srok_vipolneniya)
	values(1,			1,		1,		12,'22*22','5.12.1985','1 month');
insert into zakazi(zakazchik_id,izdelie_id,tkan_id,col,razmer,data_zakaza,srok_vipolneniya)
	values(2,			2,		1,		1,'2*12','15.2.1995','2 montha');
insert into zakazi(zakazchik_id,izdelie_id,tkan_id,col,razmer,data_zakaza,srok_vipolneniya)
	values(1,			2,		2,		2,'98*2','1.2.1999','1 week');
insert into zakazi(zakazchik_id,izdelie_id,tkan_id,col,razmer,data_zakaza,srok_vipolneniya)
	values(3,			3,		2,		22,'1*6','2.2.2002','1 year');
insert into zakazi(zakazchik_id,izdelie_id,tkan_id,col,razmer,data_zakaza,srok_vipolneniya)
	values(3,			3,		3,		11,'84*133','8.2.2003','1 day');



commit;
