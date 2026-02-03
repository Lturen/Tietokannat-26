-- Luodaan kategoriataulu
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,              -- Automaattinen ID:n syöttö
    name VARCHAR(100) NOT NULL UNIQUE   -- Nimi ei voi olla tyhjä ja sen täytyy olla uniikki
                                        --VARCHAR eli string, max pituus 100 merkkiä
);

-- Luodaan tuotetaulu
CREATE TABLE products (
    id SERIAL PRIMARY KEY,              -- Automaattinen ID:n syöttö
    name VARCHAR(100) NOT NULL,         -- Nimi pitää olla, max pituus 100 merkkiä
    price NUMERIC(10,2) NOT NULL,       -- Tarkka hinta (ei liukuluku)
    stock INTEGER NOT NULL,             -- Varastosaldo kokonaislukuna, INTEGER = int.
    category_id INTEGER NOT NULL        -- Viittaus categories-tauluun, siellä oli kategoriat luokiteltu 
        REFERENCES categories(id)       -->automaattisen id:n perusteella, joten tuotetta luodettaessa
                                        --> pitää määritellä mihin kategoriaan tuote kuuluu
);