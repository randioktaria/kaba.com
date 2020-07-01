from django.urls import path
from . import views

app_name = 'news'
urlpatterns = [
    path('', views.home, name='home'),
    path('<int:id>/<kategori>/', views.home, name='kategori'),
    path('<slug:slug>/detail/', views.detail, name='detail'),
    path('register/', views.register_view, name='register'),
    path('login/', views.login_view, name='login'),
    path('logout/', views.logout_view, name='logout'),
]