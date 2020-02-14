show tables;
UPDATE 
	users
SET 
	created_at = now(),
	updated_at = now();

