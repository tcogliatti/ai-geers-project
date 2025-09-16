-- tabla de resumen de evolucion por paciente
CREATE TABLE ai_resumen_evolucion (
    id_resume SERIAL PRIMARY KEY, -- identificador del resumen generado por la ia
    id_paciente INTEGER, -- identificador del paciente
    resumen TEXT, -- resumen generado por IA
    created_at DATE, -- fecha de creación del resumen
    updated_at DATE, -- fecha de última actualización del resumen
    FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente)
);

-- tabla que contiene la relacion entre la evolucion y las respuestas de la ia
CREATE TABLE ai_referencia_evolucion (
    id SERIAL PRIMARY KEY, -- identificador de la respuesta generada por la ia
    id_evolucion INTEGER, -- identificador de la evolución
    id_resume INTEGER, -- identificador del resumen generado por la ia
    FOREIGN KEY (id_evolucion) REFERENCES evolucion(id)
    FOREIGN KEY (id_resume) REFERENCES ai_resumen_evolucion(id_resume)
);