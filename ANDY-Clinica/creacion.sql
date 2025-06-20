CREATE DATABASE clinica;
USE clinica;

CREATE TABLE Genero (
   id_genero INT PRIMARY KEY AUTO_INCREMENT,
   descripcion VARCHAR(20) NOT NULL
   
);

CREATE TABLE Especialidad (
   id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
   nombre_especialidad VARCHAR(50) NOT NULL
);

CREATE TABLE Paciente (
   id_paciente INT PRIMARY KEY AUTO_INCREMENT,
   nombre VARCHAR(50) NOT NULL,
   apellido VARCHAR(50) NOT NULL,
   correo VARCHAR(100),
   telefono VARCHAR(15),
   id_genero INT,
   fecha_nacimiento DATE,
   FOREIGN KEY (id_genero) REFERENCES Genero(id_genero)
);

CREATE TABLE Medico (
   id_medico INT PRIMARY KEY AUTO_INCREMENT,
   nombre VARCHAR(50) NOT NULL,
   apellido VARCHAR(50) NOT NULL,
   correo VARCHAR(100),
   telefono VARCHAR(15),
   id_especialidad INT,
   FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id_especialidad)
);

CREATE TABLE Historia (
   id_historia INT PRIMARY KEY AUTO_INCREMENT,
   id_paciente INT UNIQUE,
   antecedentes TEXT,
   alergias TEXT,
   medicamentos TEXT,
   FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);

CREATE TABLE Consulta (
   id_consulta INT PRIMARY KEY AUTO_INCREMENT,
   fecha_consulta DATE,
   motivo TEXT,
   diagnostico TEXT,
   tratamiento TEXT,
   id_medico INT,
   id_paciente INT,
   FOREIGN KEY (id_medico) REFERENCES Medico(id_medico),
   FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);