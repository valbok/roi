CONNECT 'd:\temp\db.GDB' USER "admin" PASSWORD "1";
DROP DATABASE;

CREATE DATABASE 'd:\temp\db.GDB' USER "admin" PASSWORD "1";

/* Domain definitions */
CREATE DOMAIN "STROKA" AS VARCHAR(30);

CREATE DOMAIN Dcost AS
	DOUBLE PRECISION check (value >=0) NOT NULL;

/* Table: COUNTRIES, Owner: SYSDBA */


CREATE TABLE "COUNTRIES" 
(
  "CODE_COUNTRIES"	INTEGER NOT NULL,
  "NAME"	"STROKA" not null,
  PRIMARY KEY ("CODE_COUNTRIES"),
  CONSTRAINT "constr_name" unique("NAME")

);


/* ----------------------------------Table: AUTHORS, Owner: admin */

CREATE TABLE "AUTHORS" 
(
  "CODE_AUTHORS"	INTEGER NOT NULL,
  "FAM"	"STROKA" NOT NULL,
  "NAME"	"STROKA" NOT NULL,
  "OTCH"	"STROKA" NOT NULL,
  "CODE_COUNTRIES"	INTEGER NOT NULL,
  PRIMARY KEY ("CODE_AUTHORS"),
  CONSTRAINT "AUT_COUN" FOREIGN KEY ("CODE_COUNTRIES") REFERENCES COUNTRIES ("CODE_COUNTRIES")
);

/* ------------------------------Table: GENRES, Owner: admin */

CREATE TABLE "GENRES" 
(
  "CODE_GENRES"	INTEGER NOT NULL,
  "NAME"	"STROKA" NOT NULL,
  PRIMARY KEY ("CODE_GENRES")
);

/* --------------------------------Table: BOOKS, Owner: admin */

CREATE TABLE "BOOKS" 
(
  "CODE_BOOK" INTEGER NOT NULL,
  "NAME"	"STROKA" NOT NULL,
  "CODE_GENRES"	INTEGER NOT NULL,
  "CODE_AUTHORS"	INTEGER NOT NULL,
  "PRICE"	dcost,
 primary key ("CODE_BOOK"),
 CONSTRAINT "BOOKS_AUTHORS" FOREIGN KEY ("CODE_AUTHORS") REFERENCES AUTHORS ("CODE_AUTHORS"),
 CONSTRAINT "BOOKS_GEN" FOREIGN KEY ("CODE_GENRES") REFERENCES GENRES ("CODE_GENRES")

);

/* ----------------------------------Table: PUBLISHING, Owner: admin */

CREATE TABLE "PUBLISHING" 
(
  "CODE_PUBLISHING"	INTEGER NOT NULL,
  "NAME"	"STROKA" NOT NULL,
  "ADDRESS"	VARCHAR(50) NOT NULL,
  "E_MAIL"	"STROKA",
  "MAIN_EDITOR"	"STROKA",
  "TELEPHONE"	VARCHAR(7),
   PRIMARY KEY ("CODE_PUBLISHING")
);

/* -------------------------------------Table: RELESE, Owner: admin */

CREATE TABLE "RELESE" 
(
  "CODE_RELESE"	INTEGER NOT NULL,
  "CODE_BOOK"	INTEGER NOT NULL,
  "QUANTITY"	SMALLINT NOT NULL,
  "CODE_PUBLISHING"	INTEGER NOT NULL,
  "DATE_RELESE"	TIMESTAMP,
   PRIMARY KEY ("CODE_RELESE"),
   CONSTRAINT "RELESE_BOOK" FOREIGN KEY ("CODE_BOOK") REFERENCES BOOKS ("CODE_BOOK"),
   CONSTRAINT "RELESE_PUBL" FOREIGN KEY ("CODE_PUBLISHING") REFERENCES PUBLISHING ("CODE_PUBLISHING")

);



CREATE GENERATOR "AUTHORS_ID";
CREATE GENERATOR "BOOKS_ID";
CREATE GENERATOR "COUNTRIES_ID";
CREATE GENERATOR "GENRES_ID";
CREATE GENERATOR "PUBLISHING_ID";
CREATE GENERATOR "RELESE_ID";


SET TERM ^;

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "GENRES_INSERT" FOR "GENRES" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	new.Code_Genres=gen_id(Genres_Id,1);
end ^

COMMIT WORK ^

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "RELES_INSERT" FOR "RELESE" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	new.Code_Relese=gen_id(Relese_Id,1);
end ^

COMMIT WORK ^

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "PUBLISHING_INSERT" FOR "PUBLISHING" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	new.Code_Publishing=gen_id(Publishing_Id,1);
end ^

COMMIT WORK ^

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "COUNTRIES_INSERT" FOR "COUNTRIES" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	  new.Code_Countries=gen_id(Countries_Id,1);
end ^

COMMIT WORK ^

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "BOOKS_INSERT" FOR "BOOKS" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	new.Code_Book=gen_id(Books_Id,1);
end ^

COMMIT WORK ^

/* Triggers only will work for SQL triggers */

CREATE TRIGGER "AUTHORS_INSERT" FOR "AUTHORS" 
ACTIVE BEFORE INSERT POSITION 0
as
begin
	new.Code_Authors=gen_id(Authors_Id,1);
end ^

COMMIT WORK ^
SET TERM ;^


SET TERM ^;

/*-----------------------------------------------------*/
/* Stored procedures */

create PROCEDURE "BOOKS_AUTHORS" 
(
  "ISTROKA" VARCHAR(30)
)
RETURNS
(
  "OSURNAME" VARCHAR(30),
  "ONAME" VARCHAR(30),
  "OPATR" VARCHAR(30)
)
AS
begin
	for 
		SELECT a.fam, Name,otch FROM Authors a
		WHERE	a.fam Like :istroka
		into
			:oSurname,
			:oName,
			:oPatr
	do
		suspend;
end^

SET TERM ; ^


/*-------------------Delete records----------------------*/

/*---------------------------Delete izdatelstvo-----------------------*/

SET TERM ^;

CREATE PROCEDURE delete_publishing
(
	ipublishing_id integer
)
AS

BEGIN
	  delete from relese
 	  where CODE_PUBLISHING=:ipublishing_id;
 	  
		delete from publishing 
	     	where code_publishing=:ipublishing_id;
	
	
END^

SET TERM ;^

/* =================Delete izdatesltva end -----------*/

/*------------------ Delete knigi ---------Begin-----*/

SET TERM ^;

CREATE PROCEDURE delete_book
(
	ibook_id integer
)
AS
BEGIN
		delete from relese
		where code_book=:ibook_id;
	/* =====vipusk----------*/
		delete from books
		where code_book=:ibook_id;
			
END^

SET TERM ;^

/*-------------------------DElete knigi END----*/

/*------------------ Delete genres -------Begin-------*/

SET TERM ^;

CREATE PROCEDURE delete_genres
(
	igenres_id integer
)
AS
	DECLARE VARIABLE kniga_ID integer;

BEGIN
		for
			select CODE_BOOK from books
			where CODE_GeNRES=:igenres_id
			into :kniga_id
		do
		   if (not(kniga_id is null)) then
			begin
				execute procedure delete_book(:kniga_id);
		      end  
	delete from books
	where code_genres=:igenres_id;
	delete from genres 
	where code_genres=:igenres_id;
		
eND^

SET TERM ;^

/*-----------------------Delete Janr END------*/

/*------------------ Delete Avtor --------------*/

CREATE EXCEPTION Avtor_NOT_exists 'Ошибка! Такого автора не существует.';

SET TERM ^;

CREATE PROCEDURE delete_author
(
	iauthor_id integer
)
AS
	DECLARE VARIABLE avt_ID integer;
	DECLARE VARIABLE kniga_ID integer;

BEGIN
	select a.CODE_AUTHORS from authors a
	where a.CODE_AUTHORS =:iauthor_id
	into :avt_id;
		if (avt_id is null) then  
			begin
				exception avtor_not_exists;
			end else
			begin
					for
						select CODE_BOOK from books
						where CODE_AUTHORS=:avt_id
						into :kniga_id
 					do
 						   if (not(kniga_id is null)) then
							begin

 								execute procedure delete_book(:kniga_id);

						      end  
						
					/* =====Knigi---------*/
								
			delete from authors
			where CODE_AUTHORS=:avt_id;
		
			end
END^

SET TERM ;^

/*------------------Delete avt END-----------*/


SET TERM ^;

CREATE PROCEDURE delete_country
(
	icountry_id integer
)
AS
	DECLARE VARIABLE avt_ID integer;

BEGIN
		for
			select CODE_AUTHORS from AUTHORS
			where CODE_COUNTRIES=:icountry_id
			into :avt_id
		do
			   if (not(avt_id is null)) then
				begin
					execute procedure delete_author(:avt_id);
			      end  
	
	delete from countries
	where CODE_COUNTRIES=:icountry_id;
	
END^

SET TERM ;^

/*----------------------Delete city End-------*/


/*------------------ Delete vipusk --------------*/

SET TERM ^;

CREATE PROCEDURE delete_relese
(
	irelese_id integer
)
AS
BEGIN
	delete from relese
	where code_relese=:irelese_id;
END^

SET TERM ;^

/*----------------------Delete vipusk End-------*/

grant all on publishing  to "admin" WITH GRANT OPTION;
grant all on genres to "admin" WITH GRANT OPTION;
grant all on countries  to "admin" WITH GRANT OPTION;
grant all on authors to "admin" WITH GRANT OPTION;
grant all on books to "admin" WITH GRANT OPTION;
grant all on relese to "admin" WITH GRANT OPTION;

grant select on publishing to public;
grant select on genres to public;
grant select on countries to public;
grant select on authors to public;
grant select on books to public;
grant select on relese  to public;

grant delete on publishing to procedure delete_publishing;
grant delete on genres to procedure delete_genres;
grant delete on countries to procedure delete_countries;
grant delete on authors to procedure delete_authors;
grant delete on books to procedure delete_books;
grant delete on relese to procedure delete_relese;

grant delete on relese to procedure delete_publishing,delete_book;

GRANT EXECUTE ON PROCEDURE delete_publishing TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_genres TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_country TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_author TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_book TO "admin" WITH GRANT OPTION;
GRANT EXECUTE ON PROCEDURE delete_relese TO "admin" WITH GRANT OPTION;

revoke all on publishing from "user";

revoke select on publishing from "KOLYA";
revoke select on genres from "KOLYA";
revoke select on countries from "guest";
revoke select on authors from "guest";
revoke select on BOOKS from "guest";
revoke select on publishing from "guest";
