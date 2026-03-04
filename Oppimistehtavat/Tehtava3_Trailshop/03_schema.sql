CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY, --Automaattisesti kasvava id
    store_name VARCHAR(255) UNIQUE NOT NULL,
    location VARCHAR(255),
    store_type VARCHAR(15) NOT NULL CHECK (store_type IN ('physical', 'online')),  --Rajoitetaan kauppatyyppi joko fyysiseksi tai onlineksi.
    city VARCHAR(100),
    CONSTRAINT physical_adress CHECK (
    (store_type = 'online') OR
    (store_type = 'physical' AND location IS NOT NULL AND city IS NOT NULL)), -- Fyysisellä kaupalla on oltava osoite ja kaupunki.

);
CREATE TABLE stock (
    store_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (store_id, product_id), --Yhdistelmäperusavain.
    FOREIGN KEY (product_id) REFERENCES products(id),--Viittaus emotauluun products, stock on lapsitaulu.
    --FOREING KEY (omantaulun lohko) REFERENCES emotaulu(mihin sarakkeeseen viitataan)
    CONSTRAINT check_quantity CHECK (quantity >= 0), -- Määrän pitää olla nolla tai positiivinen.
    FOREIGN KEY (store_id) REFERENCES stores(store_id),--Viittaus emotauluun.
    CONSTRAINT fk_stock_store FOREIGN KEY (store_id) REFERENCES stores(store_id) ON DELETE CASCADE, --Jos kauppa poistetaan, myös varasto poistetaan.
    CONSTRAINT fk_stock_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE RESTRICT --Tuotetta ei saa poistaa, jos se on varastossa.
)
CREATE Table employees (                                                                            
    employee_id SERIAL PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    store_id INTEGER NOT NULL,
    CONSTRAINT fk_employee_store FOREIGN KEY (store_id) REFERENCES stores(store_id) ON DELETE RESTRICT --Kauppaa ei saa poistaa, jos sillä on työntekijöitä.
)
