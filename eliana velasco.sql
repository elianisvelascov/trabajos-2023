insert into tablausuario(

usu_nombre,
usu_telefono,
usu_correo
)values(

'andrea',
'3185398742',
'eliana7@gmail.com');

insert into tablapausasactivas(

pau_acty_fecha,
pau_acty_hora,
pau_acty_duracion,
pau_acty_descripcion,
pau_usu_codigo
)values(

'2023-08-9',
'01:00:00',
'una hora',
'rodillas',
'1002534132');

insert into tablaadministrador(
 admin_id,
 admin_nombre,
 admin_telefono,
 admin_direccion,
 admin_correo
 )values(
 '105565445',
 'angela',
 '3047894554',
 'morales',
 'angela3co@gmil.com');
 

insert into  tablaactividadesficias(
activ_codigo,
activ_nombre,
actvi_descrip,
activ_admin_id
)values(
'1007896231',
'yina',
'fisico',
'1003375781');

insert into tablaobtiene(
obti_codigo,
obti_acty_codigo,
obti_usu_codigo
)values(
'1007150723',
'1007151123',
'10071514745');






















