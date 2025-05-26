/*
* Script sql qui permet de creer notre base de donnee
* Ce script permet aussi d'initialiser les tables.
*/

/**
* Creation de la base de donnee
*/
/*DROP DATABASE IF EXISTS sports_forever; On supprime la BD si elle existe deja*/
/*CREATE DATABASE sports_forever ; On cree la base de donnee, elle se nomme "sport_forever" */
/*CONNECT sports_forever ; On se place dans la base de donne que l'on vient de creer pour la remplir */


SELECT 'CREATE DATABASE sports_forever' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'sports_forever');
/*
* Creation des tables qui constitueront notre BD
*/

DROP SEQUENCE IF EXISTS product_id_seq CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS price CASCADE;
DROP TABLE IF EXISTS clothes;
DROP TABLE IF EXISTS little_equipements;
DROP TABLE IF EXISTS big_equipements;
DROP TABLE IF EXISTS commands CASCADE;
DROP TABLE IF EXISTS cancel_commands CASCADE;
DROP TABLE IF EXISTS return_commands CASCADE;
DROP TABLE IF EXISTS comments;
DROP table IF EXISTS customers CASCADE;
DROP table IF EXISTS employees CASCADE;


CREATE TABLE customers( /* On cree une table que l'on nomera customer, servant a stocker les clients de notre site */
	id SERIAL PRIMARY KEY,
	/* On definit un champ id forcement non null qui s'auto-incrementera , UNSIGNED INT car il ne prendra pas de valeurs negatives on peut ainsi augmenter la valeur maximal qu'il prendra, il servira aussi a designe chaque ligne en tant que PRIMARY KEY */
	lastname TEXT NOT NULL,
	/* On definit un champ laststname forcement non null, correspondant au nom d'un client , il fera au maximum 20 caractere */
	firstname TEXT NOT NULL,
	/* On definit un champ firstname forcement non null, correspondant au prenom d'un client , il fera au maximum 20 caractere */
	diallingCode INT NOT NULL DEFAULT 33,
	/* On definit un champ diallingCode correspondant a l'indicatif d'appel telephonique pour le numero de telephone que le client nou fournira , il fera au plus 3 caracteres, il est non null car le champ numero de telephone l'est aussi */
	phoneNumber TEXT NOT NULL UNIQUE,
	/* On definit un champ phoneNumber correspondant au numero de telephone du client, il fera au plus 11 caractere (11 car le client peut etre anglais), il sera forcement non null */
	registration DATE NOT NULL DEFAULT DATE(NOW()),
	/* On definit un champ registration, correspond a la date d'inscription du client, il s'agit d'une date */
	pseudo TEXT,
	/* On definit un champ pseudo, qui corresponds a l'alias que pourra avoir le client sur notre site*/
	address TEXT,
	/* On definit un champ address, aui correspond a l'adresse du domicile du client, elle fera au maximum 100 carateres */
	mail TEXT UNIQUE,
	/* On definit un champ mail , correspondant a l'adresse e-mail du client , elle fera au maximum 50 caracteres */
	birthday DATE,
	/* On definit un champ birthday, qui correspond a la date d'anniversaire du client, il s'agit d'une date */
	lastconnection TIMESTAMP
	/* On definit un champ last connection , correpondant a la date et l'heure de derniere connection du client, il s'agit d'un timestamp */
);

CREATE TABLE employees(
	id SERIAL PRIMARY KEY,
	lastname TEXT NOT NULL,
	firstname TEXT NOT NULL,
	diallingCode INT NOT NULL DEFAULT 33,
	phoneNumber TEXT NOT NULL UNIQUE,
	registration DATE NOT NULL DEFAULT DATE(NOW()),
	type INT NOT NULL,
	address TEXT,
	mail TEXT UNIQUE,
	birthday DATE,
	store TEXT
);

CREATE SEQUENCE product_id_seq ;

CREATE TABLE price(
	id SERIAL PRIMARY KEY,
	price FLOAT,
	date_price DATE
);

CREATE TABLE products(
	id INT DEFAULT NEXTVAL('product_id_seq') PRIMARY KEY,
	p_name TEXT,
	sport TEXT,
	brand TEXT,
	quantity INT CHECK (quantity >= 0) DEFAULT 1,
	price_id INT,
	p_availability TEXT CHECK( p_availability IN ('all' , 'store_only' , 'web_only') ) DEFAULT 'all',
	state_stock TEXT CHECK( state_stock IN ('available' , 'sold_out' , 'ordered') ) DEFAULT 'available',
	color TEXT,

	CONSTRAINT fk_price
		FOREIGN KEY (price_id)
			REFERENCES price(id)
			ON DELETE SET NULL
);

CREATE TABLE clothes(
	gender TEXT,
	category TEXT,
	size TEXT
) INHERITS (products);

CREATE TABLE little_equipements(
	size INT
) INHERITS (products);

CREATE TABLE big_equipements(
	material TEXT,
	eq_length INT,
	eq_width INT,
	eq_height INT
) INHERITS (products);

CREATE TABLE commands(
	id SERIAL PRIMARY KEY,
	cmd_date TIMESTAMP NOT NULL,
	id_user INT NOT NULL,
	product_id INT CHECK(product_id <= CURRVAL('product_id_seq')) NOT NULL ,
	quantity INT CHECK (quantity > 0) NOT NULL,
	price FLOAT CHECK (price > 0) NOT NULL,
	cmd_name TEXT NOT NULL,
	cmd_address TEXT ,
	cmd_state TEXT CHECK(cmd_state IN ('card' ,'transmitted' , 'paid' , 'waiting for product' ,'awaiting payment' ,
		'canceled' , 'cancel request' , 'cancel rejected' ,
		'repayment asked' ,'awaiting repayment' , 'repayment accepted' , 'repayment rejected', 'repayed' ,
		'awaiting delivery' , 'delivered' ,
		'return asked' ,'awaiting return' , 'return accepted' , 'return rejected' , 'returned',
		'close')) NOT NULL,
	delivery_date DATE,
	billing_date DATE,

	CONSTRAINT fk_user
		FOREIGN KEY (id_user)
			REFERENCES customers(id)
			ON DELETE SET NULL
			
);

CREATE TABLE cancel_commands(
	cmd_id INT NOT NULL UNIQUE,
	cancel_date DATE NOT NULL,
	repayment_date DATE,

	CONSTRAINT fk_command_id
		FOREIGN KEY (cmd_id)
			REFERENCES commands(id)
			ON DELETE SET NULL
);

CREATE TABLE return_commands(
	cmd_id INT NOT NULL NOT NULL UNIQUE,
	return_date DATE NOT NULL,
	repayment_date DATE,
	reason TEXT ,

	CONSTRAINT fk_command_id
		FOREIGN KEY (cmd_id)
			REFERENCES commands(id)
			ON DELETE SET NULL
);

CREATE TABLE comments(
	id SERIAL PRIMARY KEY,
	id_user INT NOT NULL,
	id_product INT CHECK(id_product <= CURRVAL('product_id_seq'))  NOT NULL,
	grade INT CHECK(grade <= 5) NOT NULL,
	opinion TEXT NOT NULL,
	cmt_date TIMESTAMP,
	likes INT CHECK (likes >=0) DEFAULT 0,
	dislikes INT CHECK (dislikes >=0) DEFAULT 0,

	CONSTRAINT fk_user
		FOREIGN KEY(id_user)
			REFERENCES customers(id)
			ON DELETE SET NULL,

	CONSTRAINT unique_user_product
		UNIQUE (id_user , id_product)
) ;