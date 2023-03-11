from django.template import Template, context
from django.http import HttpResponse

def saludar (request):
     doc_externo=open("c:/users/luisf/desktop/proyecto Django 01/miprimerproyecto/miprimerproyecto/plantillas/primeraplantilla.html")
     plt=Template(doc_externo.read())
     doc_externo.close()
     ctx=context()
     documento=plt.render(ctx)
     return HttpResponse (documento)

