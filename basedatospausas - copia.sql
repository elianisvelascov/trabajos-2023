insert INTO pacientes(
PacIdentificacion,
PacNombres,
PacApellidos,
PacFechaNacimiento,
PacSexo
) values ( 
'1067534129',
'YILBER ESTIVEN',
'COICUE SECUE',
'1999-04-19',
'M'); 
INSERT INTO medicos(
MedIdentificacion,
MedNombres,
MedApellidos
) values (
'1007151497',
'FABRICIO ',
' JIMENEZ CAMPO');
INSERT INTO consultorios(
conNumero,
conNombre
)values(
'6',
'fisioterapia');


describe tratamientos;
INSERT INTO tratamientos(
TraFechaAsignado,
TraDescripcion,
TraFechaInicio,
TraObservaciones,
TraTemporal,
TraPaciente
)values(
'2017-07-13',
'tratamiento de conductos',
'2017-08-01',
'2017-08-03',
'paciente con hipertension',
'91222333');

describe citas;
INSERT INTO citas(
CitFecha,
CitHoraCitPaciente,
CitMedico,
CitConsultorio,
CitEstado,
)values( 
'2022-11-1',
'
















