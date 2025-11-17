from django.db import models

class Marca(models.Model):
    nombre = models.CharField(max_length=50)
    logo = models.ImageField(upload_to='marcas', null=True, blank=True)
    descripcion = models.TextField(max_length=300, blank=True)

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'marca'

class Modelo(models.Model):
    nombre = models.CharField(max_length=50, unique=True)
    tipo = models.CharField(max_length=50, blank=True)  
    version = models.CharField(max_length=50, blank=True)
    tipo_motor = models.CharField(max_length=50, blank=True)  
    años_fabricacion = models.CharField(max_length=50, blank=True)  

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'modelo'

class Auto(models.Model):
    patente = models.CharField(max_length=10, unique=True)
    modelo = models.ForeignKey(Modelo, on_delete=models.CASCADE)
    marca = models.ForeignKey(Marca, on_delete=models.RESTRICT)
    kilometraje = models.IntegerField()
    km_por_litro = models.FloatField()
    año = models.IntegerField()
    estado = models.CharField(max_length=50)  
    foto = models.ImageField(upload_to='autos', null=True, blank=True)
    disponibilidad = models.BooleanField(default=True)

    def __str__(self):
        return f"{self.marca} {self.modelo} - {self.patente}"

    class Meta:
        db_table = 'auto'

class Vendedor(models.Model):
    run = models.CharField(max_length=12, primary_key=True)  
    nombre = models.CharField(max_length=100)
    email = models.EmailField()
    telefono = models.CharField(max_length=15, blank=True)

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'vendedor'