CREATE TABLE users1 (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT '??? ??????????',
	birthday_at DATE COMMENT '???? ????????',
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
) COMMENT = '??????????';

INSERT INTO 
	users1 (name, birthday_at, created_at, updated_at )
VALUES
	('????????', '1990-10-05', '24.06.2007 14:13', '27.06.2016 11:02'),
	('???????', '1984-11-12', '10.05.2009 17:25', '23.06.2010 19:05'),
	('?????????', '1985-05-20', '07.01.2016 12:05', '07.01.2016 12:05'),
	('??????', '1988-01-14', '13.07.2010 20:25', '09.07.2014 12:05'),
	('????', '1998-01-12', '27.09.2012 22:43', '07.08.2016 12:05'),
	('?????', '2006-08-29', '12.01.2016 8:56', '12.01.2017 12:05');
	
DESC users1;

UPDATE 
	users1
SET 
	created_at = STR_TO_DATE (created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE (updated_at, '%d.%m.%Y %k:%i');
	
ALTER TABLE
	users1
CHANGE
	created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
	
ALTER TABLE
	users1
CHANGE
	updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
	