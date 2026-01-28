-- Luodaan kategoriataulu
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,              -- Automaattinen ID
    name VARCHAR(100) NOT NULL UNIQUE   -- Nimi pitää olla ja olla uniikki
);

-- Luodaan tuotetaulu
CREATE TABLE products (
    id SERIAL PRIMARY KEY,              -- Automaattinen ID
    name VARCHAR(100) NOT NULL,         -- Nimi pitää olla
    price NUMERIC(10,2) NOT NULL,       -- Tarkka hinta (ei liukuluku)
    stock INTEGER NOT NULL,             -- Varastosaldo kokonaislukuna
    category_id INTEGER NOT NULL        -- Viittaus kategoriaan (ei FK:ta vielä)
);