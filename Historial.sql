CREATE DATABASE ejemplo1srn; --! Creación de la base de datos

USE ejemplo1srn; -- Selección de la base de datos

--! Creación de la primera tabla de la base de datos
CREATE TABLE personas(
    nombre VARCHAR(10),
    direccion VARCHAR(20), -- Datos con tamaño máximo de 20 caracteres
    numero VARCHAR(20)
);

--! Primeros datos ingresados en la tabla
INSERT INTO personas VALUES("juan","Benito Juarez", "25");

-- Segundo dato ingresado en la tabla sin número
INSERT INTO personas (nombre, direccion) VALUES("Héctor","calle 1");

-- Tercer dato ingresado en orden diferente al de la tabla
INSERT INTO personas (direccion,edad,nombre) VALUES("Calle 2",30,"Daniel");

-- Datos ingresados en orden diferente al de la tabla
INSERT INTO personas (nombre, direccion) VALUES("Ernesto","Pino Suarez");
INSERT INTO personas VALUES("carlos","Madero 1",30);
INSERT INTO personas VALUES("Benito", "Madero 2", 20);
INSERT INTO personas VALUES("Julio","Av. de los Maestros",23);

DROP DATABASE IF EXISTS ejercicio2srn;
CREATE DATABASE ejercicio2srn; --! Creación de una nueva base de datos

USE ejercicio2srn;

CREATE TABLE productos(
	codigo VARCHAR(3),
    nombre VARCHAR(20),
    precio DECIMAL(6,2),
    fechaalta DATE
);

INSERT INTO productos VALUES("a01","Afilador",2.50,"2007-11-02");
INSERT INTO productos VALUES("s01","Silla mod.ZAZ",20,"2007-11-03");
INSERT INTO productos VALUES("s02","Silla mod.XAX",25,"2007-11-03");

SELECT nombre, direccion FROM personas; --! Selección de los datos de la 1ra base de datos

SELECT codigo, nombre FROM productos; -- Selección de los datos de la 2da base de datos

SELECT * FROM personas; --! Selección de todos los datos de la 1ra base de datos

SELECT * FROM productos; -- Selección de todos los datos de la 2da base de datos

--! Selección de los datos de la 1ra base de datos con condición
SELECT nombre, direccion FROM personas WHERE nombre = "juan";
SELECT nombre, direccion FROM personas WHERE edad = 30;

--! Selección de los datos de la 1ra base de datos con condición LIKE
SELECT nombre, direccion FROM personas WHERE direccion LIKE "%Madero%";