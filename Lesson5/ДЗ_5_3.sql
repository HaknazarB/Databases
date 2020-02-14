DROP TABLE IF EXISTS storehouse_products ;
CREATE TABLE storehouse_products (
	id SERIAL PRIMARY KEY,
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED COMMENT '????? ???????? ??????? ?? ??????',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '?????? ?? ??????';

INSERT INTO 
	storehouse_products (storehouse_id, product_id, value)
VALUES
	(1, 654, 0),
	(1, 54, 65),
	(1, 31, 7465),
	(1, 763, 0),
	(1, 644, 400);

SELECT
	*
FROM 
	storehouse_products
ORDER BY
	value = 0,
	value;
