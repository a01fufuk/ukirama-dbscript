-- Membuat sequence untuk tabel warehouse
CREATE SEQUENCE warehouse_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Membuat tabel warehouse
CREATE TABLE warehouse (
  id BIGINT NOT NULL DEFAULT NEXTVAL('warehouse_sequence'::REGCLASS) PRIMARY KEY,
  warehouse_name	 VARCHAR(512),
  warehouse_region VARCHAR(512)
  
)
WITH (
  OIDS=FALSE
);

