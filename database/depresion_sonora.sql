-- Estructura de base de datos para Depresión Markusiana
CREATE DATABASE IF NOT EXISTS depresion_sonora;
USE depresion_sonora;

-- 1. TABLA DE USUARIOS (Para el área interactiva)
CREATE TABLE IF NOT EXISTS usuarios (
                                        id INT AUTO_INCREMENT PRIMARY KEY,
                                        username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, -- Usaremos password_hash de PHP
    rol ENUM('admin', 'fan') DEFAULT 'fan',
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    ) ENGINE=InnoDB;

-- 2. TABLA DE DISCOGRAFÍA (Para cargar álbumes dinámicamente)
CREATE TABLE IF NOT EXISTS discografia (
                                           id INT AUTO_INCREMENT PRIMARY KEY,
                                           titulo VARCHAR(100) NOT NULL,
    anio YEAR NOT NULL,
    tipo ENUM('EP', 'LP', 'Single') DEFAULT 'EP',
    portada_url VARCHAR(255), -- Ruta a assets/media/img/
    spotify_link VARCHAR(255)
    ) ENGINE=InnoDB;

-- Insertar datos de prueba (Seeders)
INSERT INTO discografia (titulo, anio, tipo) VALUES
                                                 ('Depresión Sonora', 2020, 'EP'),
                                                 ('Historias tristes para no dormir', 2021, 'EP'),
                                                 ('El arte de morir muy despacio', 2022, 'LP');