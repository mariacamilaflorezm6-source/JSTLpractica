CREATE TABLE IF NOT EXISTS empleados (
    id        SERIAL PRIMARY KEY,
    nombres   VARCHAR(100) NOT NULL,
    apellido1 VARCHAR(100) NOT NULL,
    apellido2 VARCHAR(100) NOT NULL,
    edad      INTEGER NOT NULL
);
