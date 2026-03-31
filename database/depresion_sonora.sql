CREATE DATABASE IF NOT EXISTS moshdown_db;
USE moshdown_db;

-- Tabla de Usuarios para la zona interactiva (Backstage)
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    rol ENUM('admin', 'fan') DEFAULT 'fan',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Miembros de la Banda
CREATE TABLE IF NOT EXISTS miembros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100), -- Ej: Guitarra solista, Voz gutural
    foto VARCHAR(255),
    bio_corta TEXT
);

-- Tabla de Discografía
CREATE TABLE IF NOT EXISTS discografia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio YEAR,
    portada VARCHAR(255),
    enlace_spotify VARCHAR(255)
);

-- Tabla de Instrumentos
CREATE TABLE IF NOT EXISTS instrumentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_instrumento VARCHAR(100),
    marca VARCHAR(100),
    modelo VARCHAR(100),
    id_miembro INT,
    FOREIGN KEY (id_miembro) REFERENCES miembros(id) ON DELETE SET NULL
);

-- Tabla de Conciertos y Eventos
CREATE TABLE IF NOT EXISTS eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_evento VARCHAR(200) NOT NULL,
    fecha_evento DATETIME NOT NULL,
    lugar VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100) DEFAULT 'Castellón',
    descripcion TEXT, link_entradas VARCHAR(255),
    estado ENUM('confirmado', 'aplazado', 'sold_out') DEFAULT 'confirmado'
);