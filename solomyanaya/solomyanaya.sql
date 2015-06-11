CONNECT 'd:\users\solomyanaya.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'd:\users\solomyanaya.GDB' USER "admin" PASSWORD "1";

CREATE DOMAIN DPrimary_Key AS
	INTEGER NOT NULL;

CREATE DOMAIN D_name AS
	varchar(50) NOT NULL;


CREATE TABLE kvalifikacii (
		ID DPrimary_KEY,
		name D_name,
		primary key(id),
		CONSTRAINT q_name unique (name)
		
);

CREATE TABLE promisli (
		ID DPrimary_KEY,
		name D_name,
		primary key(id),
		CONSTRAINT p_name unique (name)
);

CREATE TABLE mastera (
		ID DPrimary_KEY,
		fam d_name,
		name D_name,
		otch varchar(50),
		address varchar(200),
		dat	timestamp,
		kvalifik_id integer,

		primary key(id),

		CONSTRAINT fk_mastera_kvalifik_id
		FOREIGN KEY (kvalifik_id) REFERENCES kvalifikacii (ID)

);


CREATE TABLE izdeliya (
		ID DPrimary_KEY,
		name D_name,
		promisel_id integer,
		master_id integer not null,

		primary key(id),

		CONSTRAINT fk_izdeliya_promisel_id
		FOREIGN KEY (promisel_id) REFERENCES promisli (ID),

		CONSTRAINT fk_izdeliya_master_id
		FOREIGN KEY (master_id) REFERENCES  mastera(ID)


);


CREATE GENERATOR kvalifikacii_ID_GEN;
CREATE GENERATOR promisli_id_gen;
CREATE GENERATOR mastera_ID_GEN;
CREATE GENERATOR izdeliya_ID_GEN;


SET TERM ^;


CREATE TRIGGER SET_kvalifikacii_ID FOR kvalifikacii
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(kvalifikacii_ID_GEN,1);
	END
^
CREATE TRIGGER SET_promisli_id FOR promisli
BEFORE INSERT AS
	BEGIN
		NEW.id=GEN_ID(promisli_id_gen,1);
	END
^


CREATE TRIGGER SET_mastera_ID FOR mastera
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(mastera_ID_GEN,1);
	END
^


CREATE TRIGGER SET_izdeliya_ID FOR izdeliya
BEFORE INSERT AS
	BEGIN
		NEW.ID=GEN_ID(izdeliya_ID_GEN,1);
	END
^

SET TERM ;^



/*-----------------------------------------------------------------*/
/*---------------------------Delete kvalifik-----------------------*/
/*-----------------------------------------------------------------*/

CREATE EXCEPTION kvalifik_NOT_exists 'Ошибка! Кфалификации не существует в таблице КВАЛИФИКАЦИИ.';

SET TERM ^;

CREATE PROCEDURE delete_kvalifik
(
	ikvalifik_id integer
)
AS
	DECLARE VARIABLE kva_ID integer;

BEGIN

	select id from kvalifikacii
	where id =:ikvalifik_id
	into :kva_id;
		if (kva_id is null) then  
			begin
				exception kvalifik_not_exists;
			end else
			begin
				update mastera
				set kvalifik_id= null
				where kvalifik_id=:ikvalifik_id;
					/* ----update master -----*/
				delete from kvalifikacii 
				where id=:ikvalifik_id;
				/*del kva*/
			
			end
END^

SET TERM ;^

/*------------------------------------------------------*/
/*------------------ Delete promisel ---------Begin-----*/
/*------------------------------------------------------*/

CREATE EXCEPTION promisel_NOT_exists 'Ошибка! Промысла не существует в таблице ПРОМЫСЛЫ .';

SET TERM ^;

CREATE PROCEDURE delete_promisel
(
	ipromisel_name varchar(100)
)
AS
	DECLARE VARIABLE pro_ID integer;
	DECLARE VARIABLE izd_ID integer;
BEGIN

	select id from promisli
	where name =:ipromisel_name
	into :pro_id;
		if (pro_id is null) then  
			begin
				exception promisel_not_exists;
			end else
			begin
				update izdeliya
				set promisel_id=null
				where promisel_id=:pro_id;
 
								
			delete from promisli
			where id=:pro_id;
			
			end
END^

SET TERM ;^

/*------------------------------------------------------*/
/*------------------ Delete izdeliya -------Begin-------*/
/*------------------------------------------------------*/

CREATE EXCEPTION izdelie_NOT_exists 'Ошибка! Изделия не существует в таблице ИЗДЕЛИЯ.';

SET TERM ^;

CREATE PROCEDURE delete_izdelie
(
	iizdelie_id integer
)
AS
/*	DECLARE VARIABLE izg_id integer;*/

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
				delete from izdeliya 
				where id=:iizdelie_id;
			end
END^

SET TERM ;^

/*-----------------------------------------------*/
/*------------------ Delete master --------------*/
/*-----------------------------------------------*/

CREATE EXCEPTION master_NOT_exists 'Ошибка! Мастера в таблице МАСТЕРА не существует.';

SET TERM ^;

CREATE PROCEDURE delete_master
(
	imaster_id integer
)
AS
	DECLARE VARIABLE m_ID integer;

	DECLARE VARIABLE izg_ID integer;
BEGIN

	select id from mastera
	where id =:imaster_id
	into :m_id;
		if (m_id is null) then  
			begin
				exception master_not_exists;
			end else
			begin
				delete from izdeliya
				where master_id=:m_id;
				
									
				delete from mastera 
				where id=:m_id;
		
			end
END^

SET TERM ;^



grant all on kvalifikacii  to "admin" WITH GRANT OPTION;
grant all on promisli   to "admin" WITH GRANT OPTION;
grant all on mastera   to "admin" WITH GRANT OPTION;
grant all on izdeliya  to "admin" WITH GRANT OPTION;

GRANT EXECUTE ON PROCEDURE delete_kvalifik TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_promisel TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_master TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_izdelie TO "admin" WITH GRANT OPTION;


grant select on kvalifikacii to public;
grant select on promisli to public;
grant select on mastera to public;
grant select on izdeliya to public;

grant delete on kvalifikacii to procedure delete_kvalifik;
grant delete on promisli to procedure delete_promisl;
grant delete on mastera to procedure delete_master;
grant delete on izdeliya to procedure delete_izdelie;


grant update on izdeliya to procedure delete_promisel;

grant update on mastera to procedure delete_kvalifik;
grant delete on izdeliya to procedure delete_master;

revoke all on izdeliya from "PASHA";

revoke all on kvalifikacii  from "SYSDBA";
revoke all on promisli from "SYSDBA";
revoke all on mastera  from "SYSDBA";
revoke all on izdeliya from "SYSDBA";

revoke select on mastera from "guest";



create view all_izdeliya as
select * from izdeliya;

create view all_mastera as
select * from mastera;

grant select on all_izdeliya to public;
grant select on all_mastera to public;


commit;

/*--------------------------------------*/
insert into kvalifikacii(name)
	values('low');
insert into kvalifikacii(name)
	values('middle');
insert into kvalifikacii(name)
	values('high');

insert into promisli(name)
	values('oneput');
insert into promisli(name)
	values('Sonder');
insert into promisli(name)
	values('Kroika');


insert into mastera(fam,name,otch,		address,		dat,		kvalifik_id)
	values(	  'Konovalenko','U','A','DEribasovskaya 2 2','15.7.82',1);
insert into mastera(fam,name,otch,		address,		dat,		kvalifik_id)
	values(	  'Frolenko','Andrei','Vas','stupenchatiy 1 5','19.08.82',2);
insert into mastera(fam,name,otch,		address,		dat,		kvalifik_id)
	values(	  'Soldat','Evgen','Sergeevich','Shmidta 23','1.2.80',3);
insert into mastera(fam,name,otch,		address,		dat,		kvalifik_id)
	values(	  'Pexelenko','pasha',' sondorovich','','9.11.75',1);
insert into mastera(fam,name,otch,		address,		dat,		kvalifik_id)
	values(	  'Pachenko','Alex','Sokir','Novoselskogo 22','1.1.77',2);


insert into izdeliya(name,    promisel_id,master_id)
		values('Turbo 12',1,    1);
insert into izdeliya(name,    promisel_id,master_id)
		values('tt st',2,    1);
insert into izdeliya(name,    promisel_id,master_id)
		values('Nedir',2,    2);
insert into izdeliya(name,    promisel_id,master_id)
		values('Pascal white',3,    3);
insert into izdeliya(name,    promisel_id,master_id)
		values('Oh',3,    4);
insert into izdeliya(name,    promisel_id,master_id)
		values('Police black',2,    5);

commit;