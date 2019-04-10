-- Table - person
CREATE TABLE person
(
  id serial PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  height INTEGER,
  city VARCHAR(255),
  favorite_color VARCHAR(255)
);

INSERT INTO person
  (name, age, height, city, favorite_color)
VALUES
  ('Jorge', 24, 168, 'Dallas', 'Green'),
  ('Lili', 20, 150, 'Oak Cliff', 'Purple'),
  ('Carlos', 23, 185, 'Caracas', 'Red'),
  ('Alex', 22, 152, 'Mesquite', 'Beige'),
  ('Adriana', 20, 158, 'Los Angeles', 'Yellow');

SELECT *
FROM person
ORDER BY height desc;

SELECT *
FROM person
ORDER BY height asc;

SELECT *
FROM person
ORDER BY age desc

SELECT *
FROM person
WHERE age > 20

SELECT *
FROM person
WHERE age = 18

SELECT *
FROM person
WHERE age < 20 AND age > 30

SELECT *
FROM person
WHERE age != 27

SELECT *
FROM person
WHERE favorite_color != 'Red'

SELECT *
FROM person
WHERE favorite_color != 'Red' and favorite_color != 'Blue'

SELECT *
FROM person
WHERE favorite_color = 'Green' OR favorite_color = 'Orange'

SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue')

SELECT *
FROM person
WHERE favorite_color IN ('Yellow', 'Purple')


-- Table - orders
CREATE TABLE orders
(
  person_id SERIAL,
  product_name VARCHAR(255),
  product_price NUMERIC,
  quantity INTEGER
);

INSERT INTO orders
  (product_name, product_price, quantity)
VALUES
  ('cheeseburger', 4.99, 2),
  ('tacos', 1.95, 4),
  ('bbq sliders', 3.50, 3),
  ('chicken fingers', 1.50, 5),
  ('caesar salad', 9.99, 1)

SELECT *
FROM orders

SELECT SUM(quantity)
FROM orders

SELECT SUM(product_price*quantity)
FROM orders

SELECT person_id, (product_price * quantity)
FROM orders
--OR (I interpreted instructions differently. My original solution is the one above.)
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 1;


-- Table - artist
INSERT INTO artist
  (name)
VALUES
  ('St. Vincent'),
  ('Blood Orance'),
  ('Neon Indian');

SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE 'Black%';

SELECT *
FROM artist
WHERE name LIKE '%Black%';


-- Table - employee
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
FROM employee


SELECT MIN(birth_date)
FROM employee


SELECT *
FROM employee
WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

--Table - invoice
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT COUNT(*)
FROM invoice
WHERE total < 5;

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(TOTAL)
FROM invoice;

SELECT SUM(TOTAL)
FROM invoice;







