


create table auditoria_administrador(
id_audi int auto_increment,
audi_nombreN varchar (50),
audi_nombreV varchar (50),
audi_telefonoN char (10),
audi_telefonoV char (10),
audi_direccionN varchar (50),
audi_direccionV varchar (50),
audi_correoN varchar (50),
audi_correV varchar (50),

audi_fecha datetime,
audi_usuario varchar (50),
audi_accion varchar (50),
audi_id varchar (50),

PRIMARY KEY (id_audi) 
);

drop  procedure auditoria_administrador;



create trigger auditoria_agregar_administrador
before update on tablaadministrador
for each row
insert into auditoria_administrador(
audi_nombreN,
audi_telefonoN,
audi_direccionN,
audi_correoN,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

VALUES(
		new.admin_nombre,
        new.admin_telefono,
        new.admin_direccion,
        new.admin_correo,
        now(),
        current_user(),
        'Nuevo Administrador',
	     new.admin_id

        );



drop trigger auditoria_eliminar_administrador;


create trigger auditoria_eliminar_administrador
before update on tablaadministrador
for each row
insert into auditoria_administrador(
audi_nombreV,
audi_telefonoV,
audi_direccionV,
audi_correoV,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

VALUES(
		old.admin_nombre,
        old.admin_telefono,
        old.admin_direccion,
        old.admin_correo,
        now(),
        current_user(),
        'Eliminar Administrador',
	     old.admin_id

        );



create trigger auditoria__administrador
before update on tablaadministrador
for each row
insert into auditoria_administrador(
audi_nombreN,
audi_nombreV,
audi_telefonoN,
audi_telefonoV,
audi_direccionN,
audi_direccionV,
audi_correoN,
audi_correoV,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

VALUES(
		old.admin_nombre,
        new.admin_nombre,
        old.admin_telefono,
		new.admin_telefono,
        old.admin_direccion,
        new.admin_direccion,
        old.admin_correo,
        new.admin_correo,
        now(),
        current_user(),
        'se modifico Administrador',
	     old.admin_id

        );




create table auditoria_usuario(
id_audi int auto_increment,
audi_nombreN varchar (50),
audi_nombreV varchar (50),
audi_telefonoN varchar (50),
audi_telefonoV varchar (50),
audi_correoN varchar (50),
audi_correoV varchar (50),


audi_fecha datetime,
audi_usuario varchar (50),
audi_accion varchar (50),
audi_id varchar (50),

PRIMARY KEY (id_audi) 
);



create trigger auditoria_agregar_usuario
before update on tablausuario
for each row
insert into auditoria_usuario(
audi_nombreN,
audi_telefonoN,
audi_correoN,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

values(

        new.usu_nombre,
        new.usu_telefono,
        new.usu_correo,
        now(),
        current_user(),
        'Nuevo usuario',
	     new.usu_codigo

        );
        
        create trigger auditoria_eliminar_usuario
before update on tablausuario
for each row
insert into auditoria_usuario(
audi_nombreV,
audi_telefonoV,
audi_correoV,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

values(

        old.usu_nombre,
        old.usu_telefono,
        old.usu_correo,
        now(),
        current_user(),
        'eliminar usuario',
	     old.usu_codigo

        );
        
        
        
              create trigger auditoria_modificar_usuario
before update on tablausuario
for each row
insert into auditoria_usuario(
audi_nombreN,
audi_nombreV,
audi_telefonoN,
audi_telefonoV,
audi_correoN,
audi_correoV,
audi_fecha,
audi_usuario,
audi_accion,
audi_id 
)

values(

        old.usu_nombre,
		new.usu_nombre,
        old.usu_telefono,
        new.usu_telefono,
        old.usu_correo,
		new.usu_correo,
        now(),
        current_user(),
        'se modifico  usuario',
	     old.usu_codigo

        );
  
        
        
