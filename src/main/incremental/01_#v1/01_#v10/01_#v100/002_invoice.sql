-- Membuat sequence untuk tabel invoice
CREATE SEQUENCE invoice_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Membuat tabel invoice
CREATE TABLE invoice (
  id BIGINT NOT NULL DEFAULT NEXTVAL('invoice_sequence'::REGCLASS) PRIMARY KEY,
  invoice_code	VARCHAR(512),
  customer varchar(512),
  warehouse	VARCHAR(512),
  product	VARCHAR(512),
  quantity	VARCHAR(512),
  unit	VARCHAR(512),
  price	DECIMAL,
  total_price	DECIMAL,
  total_invoice	DECIMAL,
  transaction_at	VARCHAR(512)
  
)
WITH (
  OIDS=FALSE
);


-- Index on invoice_code for faster lookups
CREATE INDEX idx_invoice_code ON invoice (invoice_code);

-- Index on customer for quick filtering by customer
CREATE INDEX idx_customer ON invoice (customer);

-- Index on warehouse for warehouse-specific queries
CREATE INDEX idx_warehouse ON invoice (warehouse);

-- Composite index for searches involving product and warehouse
CREATE INDEX idx_product_warehouse ON invoice (product, warehouse);

-- Index on transaction_at for date-based filtering
CREATE INDEX idx_transaction_at ON invoice (transaction_at);

-- Index on total_invoice for performance optimization on invoice amount queries
CREATE INDEX idx_total_invoice ON invoice (total_invoice);

