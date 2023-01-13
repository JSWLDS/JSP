CREATE TABLE Notice(
	id number primary key,
	title varchar(30),
	name varchar(20),
	content varchar(3000),
	wdate varchar(10)
);
CREATE SEQUENCE num START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999;

