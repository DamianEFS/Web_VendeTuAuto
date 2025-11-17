
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include
from DamianApp.views import inicio, register
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',inicio,name='inicio'),
    path('Vehiculos/',include('DamianApp.urls')),
    path('accounts/', include('django.contrib.auth.urls')),
    path('register/', register, name='register'),
] + static (settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
