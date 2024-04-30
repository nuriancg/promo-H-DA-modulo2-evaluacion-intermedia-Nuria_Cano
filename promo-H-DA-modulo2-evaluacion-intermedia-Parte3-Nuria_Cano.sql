-- Parte 3: Diseño de una Base de Datos en SQL

-- creamos un SCHEMA nuevo
 CREATE SCHEMA modulo_02_evaluacion_intermedia;
 USE modulo_02_evaluacion_intermedia;
 
 CREATE TABLE Rutas (
	id_ruta SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL UNIQUE,
    donde VARCHAR(100),
    tipo ENUM("circular","ida y vuelta"),
    duracion TIME,
    km FLOAT,
    dificultad SET("baja","media","alta","(Dependerá de la estación del año)"),
    esfuerzo ENUM("bajo","bajo-medio","medio","medio-alto","alto"),
    descripcion TEXT
    );
    
CREATE TABLE Prediccion_tiempo (
	id_registro SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    temp_maxima TINYINT,
    temp_minima TINYINT,
    sierra VARCHAR(25),
    fecha DATE
	);