DROP FUNCTION IF EXISTS hello;

DELIMITER -
CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "?????? ????";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "?????? ????";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "?????? ????";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "?????? ?????";
  END CASE;
END-

DELIMITER ;
SELECT NOW(), hello ();