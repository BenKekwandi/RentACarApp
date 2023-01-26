from django.shortcuts import render, redirect
from django.shortcuts import HttpResponseRedirect
from django.http import HttpResponse,Http404
from django.contrib import messages
from django.contrib.auth import authenticate,login,logout
#from authentication.forms import LoginForm
from authentication.decorators import unauthenticated_user
from django.contrib.auth.views import LogoutView
from django.contrib.auth.views import LoginView
from django.conf import settings

class admin_login(LoginView):
    template_name='login.html' 
      


