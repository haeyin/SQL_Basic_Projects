
/*CREATE DATABASE db_car;*/
/*USE db_car;*/

CREATE TABLE tbl_owner (
	owner_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	owner_fname varchar(30),
	owner_lname varchar(30),
	owner_contact varchar(30)
);

CREATE TABLE tbl_car (
	car_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	car_brand varchar(20) NOT NULL,
	car_year INT,
	car_color varchar(20) NOT NULL,
	car_owner INT NOT NULL CONSTRAINT fk_owner_id FOREIGN KEY REFERENCES tbl_owner(owner_id) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO tbl_owner
	(owner_fname, owner_lname, owner_contact)
	VALUES
	('Lauren', 'Lee', '425-562-0808'),
	('Aya', 'Svetlana', '206-608-7576'),
	('Emily', 'Chang', '425-351-5179')
;

INSERT INTO tbl_car
	(car_brand, car_year, car_color, car_owner)
	VALUES
	('Audi', 2009, 'blue', 2),
	('BMW', 2018, 'black', 3),
	('Hyundai', 2013, 'red', 1)
;

SELECT * FROM tbl_car;
SELECT * FROM tbl_owner;
