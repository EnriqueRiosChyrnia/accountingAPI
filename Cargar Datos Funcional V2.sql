
-- Insertar registros en la tabla ejercicios
INSERT INTO ejercicios (nombre, estado, fecha_inicio, fecha_fin)
VALUES 
('EJERCICIO 2023', true, '2023-01-01', '2023-12-31'),
('EJERCICIO 2024', true, '2024-01-01', '2024-12-31');


-- Insertar registros en la tabla Modulos

    INSERT INTO modulos (descripcion)
    VALUES 
    ('MODULO CONTABILIDAD' ),
    ('MODULO VENTAS' ),
    ('MODULO COMPRAS' ),
    ('MODULO RECURSOS HUMANOS');

-- Insertar registros en la tabla ModelosAsientos
INSERT INTO modelos_asientos (concepto, descripcion, id_modulo)
VALUES 
('CONCEPTO CONTABLE 1', 'DESCRIPCION CONTABLE 1', 1),
('CONCEPTO VENTAS 1', 'DESCRIPCION VENTAS 1', 2),
('CONCEPTO COMPRAS 1', 'DESCRIPCION COMPRAS 1', 3),
('CONCEPTO RRHH 1', 'DESCRIPCION RRHH 1', 4),
('CONCEPTO CONTABLE 2', 'DESCRIPCION CONTABLE 2', 1),
('CONCEPTO VENTAS 2', 'DESCRIPCION VENTAS 2', 2),
('CONCEPTO COMPRAS 2', 'DESCRIPCION COMPRAS 2', 3),
('CONCEPTO RRHH 2', 'DESCRIPCION RRHH 2', 4);


-- Insertar cuentas en la tabla Cuentas
INSERT INTO cuenta (id, nombre, codigo, id_cuenta_padre, imputable)
VALUES 
--ACTIVOS
(1, 'ACTIVOS', '1', NULL, false),
(11, 'Activos Corrientes', '1.1', 1, false),
(111, 'Caja y Bancos', '1.1.1', 2, true),
(1111, 'Caja', '1.1.1.1', 3, true),
(1112, 'Bancos', '1.1.1.2', 3, true),
(112, 'Cuentas por Cobrar', '1.1.2', 2, false),
(1121, 'Clientes', '1.1.2.1', 3, true),
(1122, 'Documentos por Cobrar', '1.1.2.2', 3, true),
(113, 'Inventarios', '1.1.3', 2, false),
(1131, 'Mercaderías', '1.1.3.1', 3, true),
(1132, 'Materias Primas', '1.1.3.2', 3, true),
(1133, 'Productos Terminados', '1.1.3.3', 3, true),
(12, 'Activos No Corrientes', '1.2', 1, false),
(121, 'Propiedades, Planta y Equipo', '1.2.1', 2, false),
(1211, 'Terrenos', '1.2.1.1', 3, true),
(1212, 'Edificios', '1.2.1.2', 3, true),
(1213, 'Maquinaria y Equipos', '1.2.1.3', 3, true),
(1214, 'Vehículos', '1.2.1.4', 3, true),
(122, 'Activos Intangibles', '1.2.2', 2, false),
(1221, 'Patentes y Marcas', '1.2.2.1', 3, true),
(1222, 'Licencias', '1.2.2.2', 3, true),
--Pasivos
(2, 'Pasivos', '2', NULL, false),
(21, 'Pasivos Corrientes', '2.1', 1, false),
(211, 'Cuentas por Pagar', '2.1.1', 2, false),
(2111, 'Proveedores', '2.1.1.1', 3, true),
(2112, 'Documentos por Pagar', '2.1.1.2', 3, true),
(212, 'Obligaciones Bancarias', '2.1.2', 2, false),
(2121, 'Préstamos Bancarios a Corto Plazo', '2.1.2.1', 3, true),
(22, 'Pasivos No Corrientes', '2.2', 1, false),
(221, 'Obligaciones Bancarias a Largo Plazo', '2.2.1', 2, false),
(2211, 'Préstamos Bancarios a Largo Plazo', '2.2.1.1', 3, true),
--Patrimonio Neto
(3, 'Patrimonio Neto', '3', NULL, false),
(31, 'Capital Social', '3.1', 1, true),
(32, 'Reservas', '3.2', 1, false),
(321, 'Reservas Legales', '3.2.1', 2, true),
(322, 'Reservas Voluntarias', '3.2.2', 2, true),
(33, 'Resultados Acumulados', '3.3', 1, true),
(331, 'Resultados de Ejercicios Anteriores', '3.3.1', 2, true),
(332, 'Resultado del Ejercicio', '3.3.2', 2, true),
--Ingresos
(4, 'Ingresos', '4', NULL, false),
(41, 'Ventas', '4.1', 1, false),
(411, 'Ventas de Productos', '4.1.1', 2, true),
(412, 'Ventas de Servicios', '4.1.2', 2, true),
(42, 'Ingresos Financieros', '4.2', 1, false),
(421, 'Intereses Ganados', '4.2.1', 2, true),
--Costos y Gastos
(5, 'Costos y Gastos', '5', NULL, false),
(51, 'Costo de Ventas', '5.1', 1, false),
(511, 'Costo de Productos Vendidos', '5.1.1', 2, true),
(512, 'Costo de Servicios Prestados', '5.1.2', 2, true),
(52, 'Gastos de Operación', '5.2', 1, false),
(521, 'Gastos de Administración', '5.2.1', 2, true),
(522, 'Gastos de Ventas', '5.2.2', 2, true),
(53, 'Gastos Financieros', '5.3', 1, false),
(531, 'Intereses Pagados', '5.3.1', 2, true),
--Otros Ingresos y Egresos
(6, 'Otros Ingresos y Egresos', '6', NULL, false),
(61, 'Otros Ingresos', '6.1', 1, false),
(611, 'Ingresos por Arrendamientos', '6.1.1', 2, true),
(62, 'Otros Egresos', '6.2', 1, false),
(621, 'Pérdidas por Venta de Activos', '6.2.1', 2, true);




--  40 registros tabla Asientos Mes de ENERO Y FEBRERO
INSERT INTO asientos (id_ejercicio, fecha, descripcion, tipo_registro, id_modelo_asiento)
VALUES 
(1, '2024-01-01', 'Registro Contable Enero 1', 'CONTABILIDAD', 1),
(1, '2024-01-02', 'Venta de Productos Enero 1', 'VENTAS', 2),
(1, '2024-01-03', 'Compra de Insumos Enero 1', 'COMPRAS', 3),
(1, '2024-01-04', 'Pago de Nómina Enero 1', 'RRHH', 4),
(1, '2024-01-05', 'Registro Contable Enero 2', 'CONTABILIDAD', 5),
(1, '2024-01-06', 'Venta de Productos Enero 2', 'VENTAS', 6),
(1, '2024-01-07', 'Compra de Insumos Enero 2', 'COMPRAS', 7),
(1, '2024-01-08', 'Pago de Nómina Enero 2', 'RRHH', 8),
(1, '2024-01-09', 'Registro Contable Enero 3', 'CONTABILIDAD', 1),
(1, '2024-01-10', 'Venta de Productos Enero 3', 'VENTAS', 2),
(1, '2024-01-11', 'Compra de Insumos Enero 3', 'COMPRAS', 3),
(1, '2024-01-12', 'Pago de Nómina Enero 3', 'RRHH', 4),
(1, '2024-01-13', 'Registro Contable Enero 4', 'CONTABILIDAD', 5),
(1, '2024-01-14', 'Venta de Productos Enero 4', 'VENTAS', 6),
(1, '2024-01-15', 'Compra de Insumos Enero 4', 'COMPRAS', 7),
(1, '2024-01-16', 'Pago de Nómina Enero 4', 'RRHH', 8),
(1, '2024-01-17', 'Registro Contable Enero 5', 'CONTABILIDAD', 1),
(1, '2024-01-18', 'Venta de Productos Enero 5', 'VENTAS', 2),
(1, '2024-01-19', 'Compra de Insumos Enero 5', 'COMPRAS', 3),
(1, '2024-01-20', 'Pago de Nómina Enero 5', 'RRHH', 4),
(1, '2024-01-21', 'Registro Contable Enero 6', 'CONTABILIDAD', 5),
(1, '2024-01-22', 'Venta de Productos Enero 6', 'VENTAS', 6),
(1, '2024-01-23', 'Compra de Insumos Enero 6', 'COMPRAS', 7),
(1, '2024-01-24', 'Pago de Nómina Enero 6', 'RRHH', 8),
(1, '2024-01-25', 'Registro Contable Enero 7', 'CONTABILIDAD', 1),
(1, '2024-01-26', 'Venta de Productos Enero 7', 'VENTAS', 2),
(1, '2024-01-27', 'Compra de Insumos Enero 7', 'COMPRAS', 3),
(1, '2024-01-28', 'Pago de Nómina Enero 7', 'RRHH', 4),
(1, '2024-01-29', 'Registro Contable Enero 8', 'CONTABILIDAD', 5),
(1, '2024-01-30', 'Venta de Productos Enero 8', 'VENTAS', 6),
(1, '2024-01-31', 'Compra de Insumos Enero 8', 'COMPRAS', 7),
(1, '2024-02-01', 'Pago de Nómina Febrero 1', 'RRHH', 8),
(1, '2024-02-02', 'Registro Contable Febrero 1', 'CONTABILIDAD', 1),
(1, '2024-02-03', 'Venta de Productos Febrero 1', 'VENTAS', 2),
(1, '2024-02-04', 'Compra de Insumos Febrero 1', 'COMPRAS', 3),
(1, '2024-02-05', 'Pago de Nómina Febrero 2', 'RRHH', 4),
(1, '2024-02-06', 'Registro Contable Febrero 2', 'CONTABILIDAD', 5),
(1, '2024-02-07', 'Venta de Productos Febrero 2', 'VENTAS', 6),
(1, '2024-02-08', 'Compra de Insumos Febrero 2', 'COMPRAS', 7),
(1, '2024-02-09', 'Pago de Nómina Febrero 3', 'RRHH', 8);



-- Insertar registros en la tabla ModelosAsientosDetalles
INSERT INTO modelos_asientos_detalles (tipo_cuenta, id_modelo_asiento, id_cuenta)
VALUES 
('ACTIVO', 1, 1111),  -- Caja
('PASIVO', 1, 2111),  -- Proveedores
('ACTIVO', 2, 1121),  -- Clientes
('INGRESO', 2, 411),  -- Ventas de Productos
('ACTIVO', 3, 1131),  -- Mercaderías
('PASIVO', 3, 2112),  -- Documentos por Pagar
('ACTIVO', 4, 1214),  -- Vehículos
('PASIVO', 4, 2111),  -- Proveedores
('ACTIVO', 5, 1112),  -- Bancos
('PASIVO', 5, 2211),  -- Préstamos Bancarios a Largo Plazo
('ACTIVO', 6, 1122),  -- Documentos por Cobrar
('INGRESO', 6, 412),  -- Ventas de Servicios
('ACTIVO', 7, 1132),  -- Materias Primas
('PASIVO', 7, 2121),  -- Préstamos Bancarios a Corto Plazo
('ACTIVO', 8, 1213),  -- Maquinaria y Equipos
('PASIVO', 8, 2112);  -- Documentos por Pagar

-- Insertar detalles para los 40 registros de la tabla Asientos
INSERT INTO asientos_detalles (tipo_asiento, monto, id_cuenta, id_asiento)
VALUES 
-- Asiento 1
('DEBE', 1000, 1111, 1),
('HABER', 1000, 2111, 1),
-- Asiento 2
('DEBE', 2000, 1121, 2),
('HABER', 2000, 411, 2),
-- Asiento 3
('DEBE', 3000, 1131, 3),
('HABER', 3000, 2112, 3),
-- Asiento 4
('DEBE', 4000, 1214, 4),
('HABER', 4000, 2111, 4),
-- Asiento 5
('DEBE', 5000, 1112, 5),
('HABER', 5000, 2211, 5),
-- Asiento 6
('DEBE', 6000, 1122, 6),
('HABER', 6000, 412, 6),
-- Asiento 7
('DEBE', 7000, 1132, 7),
('HABER', 7000, 2121, 7),
-- Asiento 8
('DEBE', 8000, 1213, 8),
('HABER', 8000, 2112, 8),
-- Asiento 9
('DEBE', 9000, 1111, 9),
('HABER', 9000, 2111, 9),
-- Asiento 10
('DEBE', 10000, 1121, 10),
('HABER', 10000, 411, 10),
-- Asiento 11
('DEBE', 11000, 1131, 11),
('HABER', 11000, 2112, 11),
-- Asiento 12
('DEBE', 12000, 1214, 12),
('HABER', 12000, 2111, 12),
-- Asiento 13
('DEBE', 13000, 1112, 13),
('HABER', 13000, 2211, 13),
-- Asiento 14
('DEBE', 14000, 1122, 14),
('HABER', 14000, 412, 14),
-- Asiento 15
('DEBE', 15000, 1132, 15),
('HABER', 15000, 2121, 15),
-- Asiento 16
('DEBE', 16000, 1213, 16),
('HABER', 16000, 2112, 16),
-- Asiento 17
('DEBE', 17000, 1111, 17),
('HABER', 17000, 2111, 17),
-- Asiento 18
('DEBE', 18000, 1121, 18),
('HABER', 18000, 411, 18),
-- Asiento 19
('DEBE', 19000, 1131, 19),
('HABER', 19000, 2112, 19),
-- Asiento 20
('DEBE', 20000, 1214, 20),
('HABER', 20000, 2111, 20),
-- Asiento 21
('DEBE', 21000, 1112, 21),
('HABER', 21000, 2211, 21),
-- Asiento 22
('DEBE', 22000, 1122, 22),
('HABER', 22000, 412, 22),
-- Asiento 23
('DEBE', 23000, 1132, 23),
('HABER', 23000, 2121, 23),
-- Asiento 24
('DEBE', 24000, 1213, 24),
('HABER', 24000, 2112, 24),
-- Asiento 25
('DEBE', 25000, 1111, 25),
('HABER', 25000, 2111, 25),
-- Asiento 26
('DEBE', 26000, 1121, 26),
('HABER', 26000, 411, 26),
-- Asiento 27
('DEBE', 27000, 1131, 27),
('HABER', 27000, 2112, 27),
-- Asiento 28
('DEBE', 28000, 1214, 28),
('HABER', 28000, 2111, 28),
-- Asiento 29
('DEBE', 29000, 1112, 29),
('HABER', 29000, 2211, 29),
-- Asiento 30
('DEBE', 30000, 1122, 30),
('HABER', 30000, 412, 30),
-- Asiento 31
('DEBE', 31000, 1132, 31),
('HABER', 31000, 2121, 31),
-- Asiento 32
('DEBE', 32000, 1213, 32),
('HABER', 32000, 2112, 32),
-- Asiento 33
('DEBE', 33000, 1111, 33),
('HABER', 33000, 2111, 33),
-- Asiento 34
('DEBE', 34000, 1121, 34),
('HABER', 34000, 411, 34),
-- Asiento 35
('DEBE', 35000, 1131, 35),
('HABER', 35000, 2112, 35),
-- Asiento 36
('DEBE', 36000, 1214, 36),
('HABER', 36000, 2111, 36),
-- Asiento 37
('DEBE', 37000, 1112, 37),
('HABER', 37000, 2211, 37),
-- Asiento 38
('DEBE', 38000, 1122, 38),
('HABER', 38000, 412, 38),
-- Asiento 39
('DEBE', 39000, 1132, 39),
('HABER', 39000, 2121, 39),
-- Asiento 40
('DEBE', 40000, 1213, 40),
('HABER', 40000, 2112, 40);
