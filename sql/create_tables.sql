CREATE TABLE IF NOT EXISTS raw_stock_prices (
    id SERIAL PRIMARY KEY,
    ticker VARCHAR(10) NOT NULL,
    price NUMERIC(12,4) NOT NULL,
    volume INTEGER NOT NULL,
    event_time TIMESTAMP NOT NULL,
    ingestion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    source VARCHAR(50) DEFAULT 'producer_prices'
);

CREATE TABLE IF NOT EXISTS raw_stock_orders (
    id SERIAL PRIMARY KEY,
    order_id VARCHAR(50) NOT NULL,
    client_id VARCHAR(100) NOT NULL,
    ticker VARCHAR(10) NOT NULL,
    order_type VARCHAR(10) NOT NULL,
    quantity INTEGER NOT NULL,
    price NUMERIC(12,4) NOT NULL,
    event_time TIMESTAMP NOT NULL,
    ingestion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    source VARCHAR(50) DEFAULT 'producer_orders'
);

CREATE TABLE IF NOT EXISTS trusted_stock_prices (
    id SERIAL PRIMARY KEY,
    ticker VARCHAR(10) NOT NULL,
    price NUMERIC(12,4) NOT NULL,
    volume INTEGER NOT NULL,
    event_time TIMESTAMP NOT NULL,
    ingestion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    price_band VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS trusted_stock_orders (
    id SERIAL PRIMARY KEY,
    order_id VARCHAR(50) NOT NULL,
    client_id_masked VARCHAR(255) NOT NULL,
    ticker VARCHAR(10) NOT NULL,
    order_type VARCHAR(10) NOT NULL,
    quantity INTEGER NOT NULL,
    price NUMERIC(12,4) NOT NULL,
    total_value NUMERIC(14,4) NOT NULL,
    event_time TIMESTAMP NOT NULL,
    ingestion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
