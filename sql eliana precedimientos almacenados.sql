use citas_s;


create procedure Insertar_pacientes(id char(10), nombre varchar(50), apellidos varchar(50), fecha date, genero char(1))

insert into pacientes (
PacIdentificacion,
PacNombres,
PacApellidos,
PacFechaNacimiento,
PacSexo
)
values 
(id,
nombre,
apellidos, 
fecha,
genero);

insert into consultorio (
conNumero,
conNombre,
)
values 
(numero,
nombre),






