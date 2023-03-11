select * from tablaactividadesficias;
select * from tablaadministrador;
select * from tablaobtiene;
select * from tablapausasactivas;
select * from tablausuario; 

select  usu_codigo, usu_nombre
from tablausuario;

select  usu_codigo, usu_nombre
from tablausuario;

select usu_codigo as usu_nombre,usu_codigo
from tablausuario;

select pau_acty_codigo,pau_acty_hora, pau_acty_fecha, pau_acty_duracion, pau_acty_descripcion, pau_usu_codigo
from tablapausasactivas;

select activ_codigo as id, activ_descrip as des
from tablaactividadesficias;

