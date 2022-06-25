CREATE DATABASE staff_db;
\c staff_db;
CREATE TABLE IF NOT EXISTS department(
id serial PRIMARY KEY,
title varchar(60) NOT NULL unique
);
CREATE TABLE IF NOT EXISTS all_staff(
id serial PRIMARY KEY,
name varchar(60) NOT NULL,
id_department integer REFERENCES department(id)
);
CREATE TABLE IF NOT EXISTS staff(
id_staff integer REFERENCES all_staff(id),
id_boss integer REFERENCES all_staff(id),
CONSTRAINT staff_pk PRIMARY KEY (id_staff, id_boss)
);