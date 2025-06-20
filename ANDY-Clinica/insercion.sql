-- Insertar Genero --
INSERT INTO Genero (descripcion) VALUES 
('Masculino'),
('Femenino');

-- Insertar datos en Especialidad
INSERT INTO Especialidad (nombre_especialidad) VALUES 
('Medicina General'),
('Cardiología'),
('Pediatría'),
('Dermatología'),
('Ginecología')
;

-- Insertar datos en Paciente
INSERT INTO Paciente (nombre, apellido, correo, telefono, fecha_nacimiento, id_genero) VALUES 
('Juan Carlos', 'Pérez García', 'juan.perez@email.com', '555-0101', '1985-03-15', 1),
('María Elena', 'González López', 'maria.gonzalez@email.com', '555-0102', '1990-07-22', 2),
('Carlos Alberto', 'Martínez Ruiz', 'carlos.martinez@email.com', '555-0103', '1978-11-08', 1),
('Ana Sofía', 'Rodríguez Hernández', 'ana.rodriguez@email.com', '555-0104', '1992-02-14', 2),
('Luis Fernando', 'Jiménez Castro', 'luis.jimenez@email.com', '555-0105', '1980-09-30', 1);

-- Insertar datos en Medico
INSERT INTO Medico (nombre, apellido, correo, telefono, id_especialidad) VALUES 
('Dr. Fernando', 'García Mendoza', 'fernando.garcia@clinica.com', '555-1001', 1),
('Dra. Isabel', 'López Martínez', 'isabel.lopez@clinica.com', '555-1002', 2),
('Dr. Ricardo', 'Hernández Silva', 'ricardo.hernandez@clinica.com', '555-1003', 3),
('Dra. Carmen', 'Morales Jiménez', 'carmen.morales@clinica.com', '555-1004', 4),
('Dr. Alejandro', 'Vega Castillo', 'alejandro.vega@clinica.com', '555-1005', 5);