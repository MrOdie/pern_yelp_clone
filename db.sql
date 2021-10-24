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
  name VARCHAR(75),
  location VARCHAR(75),
  price_range INT
);

-- populate db
INSERT INTO restaurants (id, name, location, price_range) values (123, 'McDonalds', 'New York', 3);

-- get info from db table
SELECT * FROM name_of_table
