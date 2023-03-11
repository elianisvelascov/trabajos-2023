from django.db import models


class Marca (models.Model):
    nombre = models.CharField(max_length=50)
   

    def __str__(self):
        return self.nombre

class Autos (models.Model):
    nombre = models.CharField(max_length=50)
    kilometraje =models.IntegerField() 
    comentarios = models.CharField(max_length=50)
    marca = models.ForeignKey(Marca, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre



# Create your models here.
