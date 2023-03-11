create table auditoria_empleador(
id_audi_empleador int auto_increment,
audi_Nombre_Anterior varchar(50),
audi_Nombre_Nuevo varchar(50),
audi_Correo_Nuevo varchar(50),
audi_Correo_Anterior varchar(50),
audi_FechaModificacion datetime,
audi_Usuario varchar(45),
audi_EmpCodigo int,
audi_Accion varchar(45),
primary key(id_audi_empleador)    );

Create trigger auditoria_EliminaciEmpleador
after delete ON empleador
for each row
insert into auditoria_empleador(
audi_Nombre_Anterior, audi_Correo_Anterior,
audi_FechaModificacion, audi_usuario,
audi_EmpCodigo, audi_Accion)
VALUES
(old.EmpNombre, old.EmpCorreo,
now(), current_user(),
old.EmpCodigo, 'Registro Eliminado');

create trigger auditoria_InsertarEmpleador
after insert on empleador
for each row 
insert into auditoria_empleador(
 audi_Nombre_Nuevo, audi_Correo_Nuevo,
audi_FechaModificacion, audi_Usuario, 
audi_EmpCodigo, audi_Accion)
values
(new.EmpNombre, new.EmpCorreo,
now(), current_user(),
new.EmpCodigo, 'Se ha insertado un nuevo consultorio');

create trigger auditoria_ModificacionEmpleador
before update on empleador
for each row 
insert into auditoria_empleador(
audi_Nombre_Anterior, audi_Nombre_Nuevo, 
audi_FechaModificacion, audi_Usuario, 
audi_EmpCodigo, audi_Accion)
values
(old.EmpNombre,
new.EmpNombre, 
now(), current_user(),
new.EmpCodigo, 'El campo  	ha sido modificado');

 ############################################################
 
 create table auditoria_Actividad(
id_audi_empleador int auto_increment,
audi_Nombre_Anterior varchar(50),
audi_Nombre_Nuevo varchar(50),
audi_Fecha_Nueva datetime,
audi_Fecha_Anterior datetime,
audi_FechaModificacion datetime,
audi_Usuario varchar(45),
audi_ActCodigo int,
audi_Accion varchar(45),
primary key(id_audi_empleador)    );
 
Create trigger auditoria_EliminacionActividad
after delete ON actividad
for each row
insert into auditoria_Actividad(
audi_Nombre_Anterior, 
audi_Fecha_Anterior,
audi_FechaModificacion, audi_usuario,
audi_ActCodigo, audi_Accion)
VALUES
(old.ActTrabajoRealizado, 
now(), current_user(),
old.ActCodigo, 'Registro Eliminado');

create trigger auditoria_InsertarActividad
after insert on actividad
for each row 
insert into auditoria_Actividad(
audi_Nombre_Nuevo, audi_Fecha_Nueva,
audi_FechaModificacion, audi_Usuario, 
audi_ActCodigo, audi_Accion)
values
(new.ActTrabajoRealizado, new.ActFecha,
now(), current_user(),
new.ActCodigo, 'Se ha insertado una nueva actividad');

create trigger auditoria_ModificacionActividad
before update on actividad
for each row 
insert into auditoria_Actividad(
audi_Nombre_Anterior, audi_Nombre_Nuevo,
audi_FechaModificacion, audi_Usuario, 
audi_ActCodigo, audi_Accion)
values
(old.ActTrabajoRealizado,
new.ActTrabajoRealizado, 
now(), current_user(),
new.ActCodigo, 'El campo  	ha sido modificado');

################################################

create table auditoria_Categoria(
id_audi_Categoria int auto_increment,
audi_Nombre_Anterior varchar(50),
audi_Nombre_Nuevo varchar(50),
audi_FechaModificacion datetime,
audi_Usuario varchar(45),
audi_CatCodigo int,
audi_Accion varchar(45),
primary key(id_audi_Categoria)    );
 
 Create trigger auditoria_EliminacionCategoria
after delete ON categoria
for each row
insert into auditoria_Categoria(
audi_Nombre_Anterior, 
audi_FechaModificacion, audi_usuario,
audi_CatCodigo, audi_Accion)
VALUES
(old.CatNombre, 
now(), current_user(),
old.CatCodigo, 'Registro Eliminado');

create trigger auditoria_InsertarCategoria
after insert on categoria
for each row 
insert into auditoria_Categoria(
 audi_Nombre_Nuevo,
audi_FechaModificacion, audi_Usuario, 
audi_CatCodigo, audi_Accion)
values
(new.CatNombre,
now(), current_user(),
new.CatCodigo, 'Se ha insertado una nueva categoria');

create trigger auditoria_ModificacionCategoria
before update on categoria
for each row 
insert into auditoria_Categoria(
audi_Nombre_Anterior, audi_Nombre_Nuevo,
audi_FechaModificacion, audi_Usuario, 
audi_CatCodigo, audi_Accion)
values
(old.CatNombre,
new.CatNombre, 
now(), current_user(),
new.CatCodigo, 'El campo  	ha sido modificado');
 
 drop trigger auditoria_EliminacionActividad;
 
update categoria
set CatNombre = 'Peppasdsd'
where CatCodigo = '44548';

insert into categoria(
CatNombre
 )values(
 'caja'
 );
 
delete from categoria
where CatCodigo = '44549';

drop trigger auditoria_ModificacionActividad;

