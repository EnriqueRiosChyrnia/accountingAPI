-- Seleccionar la base de datos "contabilidad"
SELECT current_database();

-- Eliminar registros de las tablas que tienen claves foráneas primero
DELETE FROM asientos_detalles;
DELETE FROM modelos_asientos_detalles;
DELETE FROM asientos;
DELETE FROM modelos_asientos;
DELETE FROM cuenta;
DELETE FROM modulos;
DELETE FROM ejercicios;

-- Vaciar las tablas sin eliminar la estructura y reiniciar los contadores de identidad
TRUNCATE TABLE asientos_detalles RESTART IDENTITY CASCADE;
TRUNCATE TABLE modelos_asientos_detalles RESTART IDENTITY CASCADE;
TRUNCATE TABLE asientos RESTART IDENTITY CASCADE;
TRUNCATE TABLE modelos_asientos RESTART IDENTITY CASCADE;
TRUNCATE TABLE cuenta RESTART IDENTITY CASCADE;
TRUNCATE TABLE modulos RESTART IDENTITY CASCADE;
TRUNCATE TABLE ejercicios RESTART IDENTITY CASCADE;
