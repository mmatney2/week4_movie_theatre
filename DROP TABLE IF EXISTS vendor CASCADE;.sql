DROP TABLE IF EXISTS vendor CASCADE;
CREATE TABLE vendor(
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100)
    VENDOR_PHONE varchar(13)
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS item CASCADE;
CREATE TABLE item(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    "desc" TEXT, 
    price DECIMAL(10,2)
);

DROP TABLE IF EXISTS vendor_item CASCADE;
CREATE TABLE vendor_item(
    vendor_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY(vendor_id) REFERENCES, vendor(vendor_id)
    FOREIGN KEY(item_id) REFERENCES item(item_id)
);

DROP TABLE IF EXISTS "order" CASCADE;
CREATE TABLE "order"(
    customer_id INTEGER NOT NULL,
    order_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now())
    FOREIGN KEY 
)