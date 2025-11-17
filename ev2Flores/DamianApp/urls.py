from django.urls import path
from . import views 

urlpatterns = [
    path('marcas/', views.marcas, name='marcas'),
    path('cmarca/', views.crearMarca, name='cmarca'),
    path('emarca/<int:id>', views.editarMarca, name='editmarca'),
    path('eliminarmarca/<int:id>', views.eliminarMarca, name='eliminarmarca'),
    path('export/marcas/excel/', views.export_marcas_excel, name='export_marcas_excel'), 

    path('modelos/', views.modelos, name='modelos'),
    path('cmodelo/', views.crearModelo, name='cmodelo'),
    path('emodelo/<int:id>', views.editarModelo, name='editmodelo'),
    path('eliminarmodelo/<int:id>', views.eliminarModelo, name='eliminarmodelo'),
    path('export/modelos/excel/', views.export_modelos_excel, name='export_modelos_excel'), 

    path('autos/', views.autos, name='autos'),
    path('cauto/', views.crearAuto, name='cauto'),
    path('eauto/<str:patente>', views.editarAuto, name='editauto'),
    path('eliminarauto/<str:patente>', views.eliminarAuto, name='eliminarauto'),
    path('export/autos/excel/', views.export_autos_excel, name='export_autos_excel'), 

    path('vendedores/', views.vendedores, name='vendedores'),
    path('cvendedor/', views.crearVendedor, name='cvendedor'),
    path('evendedor/<str:run>', views.editarVendedor, name='editvendedor'),
    path('eliminarvendedor/<str:run>', views.eliminarVendedor, name='eliminarvendedor'),
    path('export/vendedores/excel/', views.export_vendedores_excel, name='export_vendedores_excel'), 
]