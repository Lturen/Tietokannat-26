-- 1. Suodattaa kaikki kategoriat
SELECT * FROM categories;

-- 2. Kaikki tuotteet
SELECT * FROM products;

-- 3. Vain tuotteiden nimet ja hinnat
SELECT name, price FROM products;

-- 4. Tuotteet, joiden hinta > 50
SELECT * FROM products WHERE price > 50;

-- 5. Tuotteet kalleimmasta halvimpaan
SELECT name, price FROM products ORDER BY price DESC;

--6. Tuotteet, joiden hinta on yli 100
SELECT * FROM products WHERE price > 100;