-- for help
\?

-- list databases
\l

-- Create Database
CREATE DATABASE name_of_db

-- connect to db
\c name_of_db

-- list all tables/List of relations
\d

-- list Table info and type
\d name_of_table

-- add column to table
ALTER TABLE name_of_table ADD COLUMN name_of_table type_information;
eg: ALTER TABLE products ADD COLUMN featured boolean;

-- delete table
DROP TABLE name_of_table;

-- delete db
DROP DATABASE name_of_db;

-- Create Table
CREATE TABLE products (
  id BIGINT PRIMARY KEY,
  name VARCHAR(50),
  price INT,
  on_sale boolean
);

-- Create Restaurant
CREATE TABLE restaurants (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(75) NOT NULL,
  location VARCHAR(75) NOT NULL,
  price_range INT NOT NULL check(price_range >= 1 and price_range <= 5)
);

-- populate db
INSERT INTO restaurants (name, location, price_range) values ('McDonalds', 'New York', 3);
INSERT INTO restaurants (name, location, price_range) values ('Five Guys', 'New York', 3);
INSERT INTO restaurants (name, location, price_range) values ('Chipotle', 'Colorado', 3);

-- get info from db table
SELECT * FROM name_of_table
