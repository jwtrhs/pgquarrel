CREATE TABLE to_table_1 (
	a integer not null,
	b varchar(30) not null,
	c text not null,
	d xml,
	e numeric(10,2),
	f text collate "en_US" default 'teste' not null,
	g varchar(100) default 'Euler Taveira',
	PRIMARY KEY(a)
);

CREATE TABLE to_table_2 (
	a serial,
	b varchar(40) not null,
	c integer not null,
	FOREIGN KEY(c) REFERENCES to_table_1(a) ON UPDATE RESTRICT ON DELETE RESTRICT,
	PRIMARY KEY(a)
);

CREATE TABLE to_table_3 (
	a integer,
	b text,
	c date,
	CHECK(c > '2010-01-01' AND c < '2014-12-31')
) WITH (autovacuum_enabled = off, autovacuum_vacuum_scale_factor = 0.4, autovacuum_analyze_scale_factor = 0.2);

--CREATE TABLE to_table_4 (
--) INHERITS (to_table_1);

--CREATE TYPE to_type_1 AS (
--	nome varchar(30),
--	cnpj varchar(14),
--	endereco varchar(100)
--);

--CREATE TABLE to_table_5 OF to_type_1;
