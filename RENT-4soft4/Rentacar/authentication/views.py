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
from authentication.forms import CaptchaForm
from django.conf import settings

class admin_login(LoginView):
    template_name='login.html' 

def login_captcha(request):
    #messages.error(request,"")
    if request.method =='POST':
        usname=request.POST.get("username")
        pw=request.POST.get("password")
        user=authenticate(username=usname,password=pw)
        form=CaptchaForm(request.POST)
        if user != None:
            if form.is_valid():
                messages.success(request,"Success!")
                login(request,user)
                return redirect('/fleet')
            else:
                messages.error(request,"Wrong Captcha!")
        else:
            messages.error(request, "Wrong Credentials!!!")
    form=CaptchaForm()
    return render(request, 'home.html', {'form':form})


      


