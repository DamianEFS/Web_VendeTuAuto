from django import forms
from DamianApp.models import Marca, Modelo, Auto, Vendedor
import re 

class MarcaForm(forms.ModelForm):
    class Meta:
        model = Marca
        fields = '__all__'
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control', 'unique':True}), 
            'logo': forms.FileInput(attrs={'class': 'form-control', 'accept': 'image/*'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control', 'rows': 3}),
        }

class ModeloForm(forms.ModelForm):
    class Meta:
        model = Modelo
        fields = '__all__'
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo': forms.TextInput(attrs={'class': 'form-control'}),
            'version': forms.TextInput(attrs={'class': 'form-control'}),
            'tipo_motor': forms.TextInput(attrs={'class': 'form-control'}),
            'años_fabricacion': forms.TextInput(attrs={'class': 'form-control'}),
        }

class AutoForm(forms.ModelForm):
    class Meta:
        model = Auto
        fields = '__all__'
        widgets = {
            'patente': forms.TextInput(attrs={'class': 'form-control'}),
            'modelo': forms.Select(attrs={'class': 'form-select'}),
            'marca': forms.Select(attrs={'class': 'form-select'}),
            'kilometraje': forms.NumberInput(attrs={'class': 'form-control'}),
            'km_por_litro': forms.NumberInput(attrs={'class': 'form-control'}),
            'año': forms.NumberInput(attrs={'class': 'form-control'}),
            'estado': forms.TextInput(attrs={'class': 'form-control'}),
            'foto': forms.FileInput(attrs={'class': 'form-control', 'accept': 'image/*'}),
            'disponibilidad': forms.CheckboxInput(attrs={'class': 'form-check-input'}),
        }

class VendedorForm(forms.ModelForm):
    class Meta:
        model = Vendedor
        fields = '__all__'
        widgets = {
            'run': forms.TextInput(attrs={'class': 'form-control', 'placeholder': 'Ej: 12345678-K'}),
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'email': forms.EmailInput(attrs={'class': 'form-control'}),
            'telefono': forms.TextInput(attrs={'class': 'form-control'}),
        }

    def clean_run(self):
        run = self.cleaned_data.get('run')
        run_limpio = str(run).replace(".", "").upper()
        patron = re.compile(r'^\d{7,8}-[\dK]$')

        if not patron.match(run_limpio):
            raise forms.ValidationError("Formato de RUT incorrecto. Debe ser 12345678-K (sin puntos, con guion).")
        

        return run_limpio
