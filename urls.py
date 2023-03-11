from django.contrib.auth import login
from django.urls import path
from  .import views

urlpatterns = [
	
    path('', views.vautos, name='ventas'),
    path('añadir/',views.añadir_autos, name='añadir'),
	path('lista/',views.lista_autos, name='lista'),
	path('editar/<id>/',views.editar_autos, name='editar'),
	path('eliminar/<id>/',views.elimanar_autos, name='eliminar'),
	path('detalle/<id>/',views.ver_detalle, name='detalle'),
	
    path('logins/', views.logins, name='logins' ),
	path('cerrar/', views.cerrar_secion, name='cerrar' ),
	path('registrar_usuario/', views.registrar_usuario, name='registrar'),

	path('nueva/',views.nueva_marca, name='nueva'),
	path('listar/',views.lista_marca, name='listar'),
	path('edita/<id>/',views.editar_marca, name='edita'),
	path('elimina/<id>/',views.elimina_marca, name='elimina'),


]