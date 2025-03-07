-- Membuat sequence untuk tabel users_sequence
CREATE SEQUENCE users_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

-- Membuat tabel users_sequence
CREATE TABLE users (
  id BIGINT NOT NULL DEFAULT NEXTVAL('users_sequence'::REGCLASS) PRIMARY KEY,
  username CHARACTER VARYING(512) NOT NULL,
  password CHARACTER VARYING(512) NOT NULL
  
)
WITH (
  OIDS=FALSE
);

CREATE UNIQUE INDEX idx_users_01 ON users(username);