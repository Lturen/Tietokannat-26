


  
  CREATE TABLE orders (
    id SERIAL PRIMARY KEY,               -- Automaattinen ID:n syöttö
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,                   -- Tilauspäivä, ei saa olla tyhjä
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE RESTRICT  -- Viittaus customers-tauluun, asiakas ei saa poistua jos hänellä on tilauksia
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    order_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    email VARCHAR(250) UNIQUE NULL        -- Sähköposti voi olla tyhjä, mutta jos se on annettu, sen pitää olla uniikki

);

CREATE TABLE order_items (
    PRIMARY KEY (order_id, product_id),  -- Yhdistelmäavain tilaukselle ja tuotteelle   
    quantity INTEGER NOT NULL CHECK (quantity >= 1),  -- Määrän pitää olla positiivinen
    unit_price NUMERIC(10,2) NOT NULL CHECK (unit_price >= 0),  -- Hinnan pitää olla nolla tai positiivinen
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,   
    CONSTRAINT fk_order 
        FOREIGN KEY (order_id) 
        REFERENCES orders(id) 
        ON DELETE CASCADE,  -- Jos tilaus poistetaan, myös tilauksen tuotteet poistetaan
    CONSTRAINT fk_product 
        FOREIGN KEY (product_id) 
        REFERENCES products(id) 
        ON DELETE RESTRICT  -- Tuotetta ei saa poistaa, jos se on tilattu

);