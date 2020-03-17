SELECT * FROM shop.users;
SELECT * FROM sample.users;

START TRANSACTION;
  INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 2;
  DELETE FROM shop.users WHERE id = 1 LIMIT 1;
COMMIT;