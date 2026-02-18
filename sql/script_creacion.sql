CREATE DATABASE IF NOT EXISTS db_hormiga;
USE db_hormiga;

CREATE TABLE transacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(100) NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    tipo ENUM('GASTO', 'AHORRO') NOT NULL, -- Aquí diferenciamos
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertemos un par de datos para probar mañana
INSERT INTO transacciones (descripcion, monto, tipo) VALUES ('Helado tarde', 2500.00, 'GASTO');
INSERT INTO transacciones (descripcion, monto, tipo) VALUES ('Ahorro cables', 5000.00, 'AHORRO');