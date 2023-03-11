from Autos.models import Autos, Marca
from django.forms import ModelForm


class Autos_Form (ModelForm):
    class Meta:
        model =   Autos
        fields =  ['nombre', 'kilometraje','comentarios', 'marca']      


class Marca_Form (ModelForm):
    class Meta:
        model =   Marca
        fields =  ['nombre',]      

