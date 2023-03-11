use citas_s;

create procedure  listpacientes()
select*
from pacientes;

 call listpacientes();
 
 
 
 use citas_s;

create procedure  listmedicos()
select*
from medicos;

 call listmedicos();
 
 
 use citas_s;

create procedure listcitas()
select*
from citas;

 call listcitas();
 
 
use citas_s;

create procedure listtratamientos()
select*
from citas;

 call listtratamientos();
 

create procedure  pacientessOrd()
select pacIdentificacion, pacNombres , pacApellidos,pacFechaNacimiento
                                               
from pacientes
order by pacApellidos asc;
call pacientesOrd();


create  procedure  PacPorDocumento(ID char (10))
select pacNombres, pacApellidos, pacFechaNacimiento,pacSexo
from pacientes 
where paIdentificacion = ID;

create procedure  pacXSexo(genero enum ('M','F'))
select pacIdentificacion, pacNombres, PacApellidos, pacFechaNacimiento 
FROM pacientes
WHERE pacSexo=genero;


create  procedure citPorEstado(estado enum('Asignada','Cumplida'))
select citPaciente,citfecha,citHora
from citas
where citEstado =estado;
describe citas;


create procedure IdPaciente (Descripcion text )
select TraFechaInicio, TraFechaFin,TraPaciente,TraObservaciones 
from tratamiento 
where TraDescripcion = Despripcion; 



create procedure InsConsultorio(codigo int , nombre varchar (50))
Insert into consultorios (
ConNumero,
ConNombre
)VALUES(
14,
'psicologia' 
);

create  procedure  insertpacientes(Identificacion  char (10),Nombres varchar (50),Apellido varchar (50) , fecha  date , sexo enum ('m','f'))
insert into pacientes(
PacIdentificacion,
PacNombres,
PacApellidos,
PacFechaNacimiento,
PacSexo
)
values
(
Identificacion,
Nombres,
Apellido,
fecha,
sexo
);

describe medicos;

CREATE PROCEDURE  Insertmedico(identificacion char(10), nombres varchar(50), apellidos varchar(50) )
insert into medicos (MedIdentificacion,MedNombres,MedApellidos) 
values (identificacion,nombres,apellidos); 











