--
-- Drops just in case you are reloading
---
DROP TABLE IF EXISTS book CASCADE;
DROP TABLE IF EXISTS author CASCADE;
DROP TABLE IF EXISTS book_author CASCADE;
DROP TABLE IF EXISTS user CASCADE;
DROP TABLE IF EXISTS role CASCADE;
DROP TABLE IF EXISTS user_role CASCADE;
 
--
-- Create a very simple database to hold book and author information
--
CREATE TABLE book (
id SERIAL PRIMARY KEY,
title TEXT,
rating INTEGER
);
 
CREATE TABLE author (
id SERIAL PRIMARY KEY,
first_name TEXT,
last_name TEXT
);
 
-- 'book_author' is a many-to-many join table between books & authors
CREATE TABLE book_author (
book_id INTEGER REFERENCES book(id) ON DELETE CASCADE ON UPDATE CASCADE,
author_id INTEGER REFERENCES author(id) ON DELETE CASCADE ON UPDATE CASCADE,
PRIMARY KEY (book_id, author_id)
);
 
---
--- Load some sample data
---
INSERT INTO book (title, rating) VALUES ('CCSP SNRS Exam Certification Guide', 5);
INSERT INTO book (title, rating) VALUES ('TCP/IP Illustrated, Volume 1', 5);
INSERT INTO book (title, rating) VALUES ('Internetworking with TCP/IP Vol.1', 4);
INSERT INTO book (title, rating) VALUES ('Perl Cookbook', 5);
INSERT INTO book (title, rating) VALUES ('Designing with Web Standards', 5);
INSERT INTO author (first_name, last_name) VALUES ('Greg', 'Bastien');
INSERT INTO author (first_name, last_name) VALUES ('Sara', 'Nasseh');
INSERT INTO author (first_name, last_name) VALUES ('Christian', 'Degu');
INSERT INTO author (first_name, last_name) VALUES ('Richard', 'Stevens');
INSERT INTO author (first_name, last_name) VALUES ('Douglas', 'Comer');
INSERT INTO author (first_name, last_name) VALUES ('Tom', 'Christiansen');
INSERT INTO author (first_name, last_name) VALUES ('Nathan', 'Torkington');
INSERT INTO author (first_name, last_name) VALUES ('Jeffrey', 'Zeldman');
INSERT INTO book_author VALUES (1, 1);
INSERT INTO book_author VALUES (1, 2);
INSERT INTO book_author VALUES (1, 3);
INSERT INTO book_author VALUES (2, 4);
INSERT INTO book_author VALUES (3, 5);
INSERT INTO book_author VALUES (4, 6);
INSERT INTO book_author VALUES (4, 7);
INSERT INTO book_author VALUES (5, 8);
