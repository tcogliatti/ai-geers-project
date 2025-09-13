
-- tabla PACIENTE
CREATE TABLE paciente (
    id_paciente INTEGER PRIMARY KEY,
    apellido VARCHAR(100),
    nombre VARCHAR(100),
    fecha_nac DATE,
    sexo VARCHAR(10),
    edad VARCHAR(20),
    dni VARCHAR(20),
    localidad VARCHAR(100),
    obra_social VARCHAR(100),
    afiliado_nro VARCHAR(50),
    telefono VARCHAR(100),
    telefono_numero VARCHAR(20),
    email VARCHAR(100),
    especialidad VARCHAR(100),
    diagnostico VARCHAR(255),
    enfermedad_base VARCHAR(255),
    ant_perinatales TEXT,
    ant_familiares TEXT,
    registro VARCHAR(50),
    fecha_reg VARCHAR(50)
);
-- tabla EVOLUCION
CREATE TABLE evolucion (
    id INTEGER PRIMARY KEY,
    id_paciente INTEGER,
    fecha DATE,
    edad INTEGER,
    uni_edad VARCHAR(20),
    edad_anios FLOAT,
    edad_texto VARCHAR(50),
    peso FLOAT,
    talla FLOAT,
    imc FLOAT,
    pc FLOAT,
    motivo VARCHAR(255),
    conducta TEXT,
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);


