from django.urls import path
from . import views
from django.contrib.auth.views import LogoutView
from django.contrib.auth.views import LoginView
from django.conf import settings

urlpatterns=[
    path('admin-login/',views.login_captcha),
    #path('admin-login/',views.admin_login.as_view(next_page=settings.LOGIN_REDIRECT_URL), name='admin_login'),
    path('admin-logout/', LogoutView.as_view(next_page=settings.LOGOUT_REDIRECT_URL), name='logout')        
]