# Problema a resolver: 
Facilitar el trabajo del profesional de la salud al momento de atender a cada paciente.
# Objetivo
Desarrollar un sistema de apoyo basado en inteligencia artificial para el entorno médico. El sistema tomará como insumo la historia clínica del paciente y generará un resumen con los puntos más relevantes, de manera que el profesional pueda acceder rápidamente a la información esencial sin necesidad de revisar toda la historia clínica completa.

# Datos
Los datos parten de un una BBDD real de pacientes pediatricos.
Por cuestiones de privacidad de los datos de los menores de edad, se procedió a realizar una modificacion de los mismos por medio del llamado a la API de OpenAI. 
Usando propting estructurado enviamos los datos reales y enbase a ellos se obtuvo ona salida estructurada con los datos ficticios.
Posteriormente estos datos se postearon a la BBDD previamente creada con sqlit3 