
-- tabla PACIENTE
CREATE TABLE paciente (
    id_paciente INTEGER PRIMARY KEY, -- identificador del paciente
    apellido VARCHAR(100), -- apellido del paciente
    nombre VARCHAR(100), -- nombre del paciente
    fecha_nac DATE, -- fecha de nacimiento
    sexo VARCHAR(10), -- sexo del paciente
    edad VARCHAR(20), -- edad del paciente
    dni VARCHAR(20), -- DNI del paciente
    localidad VARCHAR(100), -- localidad del paciente
    obra_social VARCHAR(100), -- obra social del paciente
    afiliado_nro VARCHAR(50), -- número de afiliado
    telefono VARCHAR(100), -- teléfono del paciente
    telefono_numero VARCHAR(20), -- número de teléfono
    email VARCHAR(100), -- email del paciente
    especialidad VARCHAR(100), -- especialidad por la que el paciente es atendido
    diagnostico VARCHAR(255), -- diagnóstico inicial del paciente
    enfermedad_base VARCHAR(255), -- enfermedad base del paciente
    ant_perinatales TEXT, -- antecedentes perinatales
    ant_familiares TEXT, -- antecedentes familiares
    registro VARCHAR(50), -- número de registro
    fecha_registro DATETIME -- fecha y hora de registro en formato "Wed May 21 2025 18:09:52"
);
-- tabla EVOLUCION
CREATE TABLE evolucion (
    id INTEGER PRIMARY KEY, -- identificador de la evolución
    id_paciente INTEGER, -- identificador del paciente
    fecha DATE, -- fecha de la evolución
    edad INTEGER, -- edad del paciente en el momento de la evolución
    uni_edad VARCHAR(20), -- unidad de medida de la edad
    edad_anios FLOAT, -- edad del paciente en años
    edad_texto VARCHAR(50), -- edad del paciente en texto
    peso FLOAT, -- peso del paciente
    talla FLOAT, -- talla del paciente
    imc FLOAT, -- índice de masa corporal del paciente
    pc FLOAT, -- perímetro cefálico del paciente
    motivo VARCHAR(255), -- motivo de la consulta
    conducta TEXT, -- descripción de la consulta o evolución resultante del motivo médico
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);


