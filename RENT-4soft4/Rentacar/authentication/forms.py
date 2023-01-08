from django import forms
from django.forms import ModelForm 
from fleet.models import UserModel
#from captcha.fields import CaptchaField


class LoginForm(ModelForm):
    class Meta:
        model=UserModel
        fields="__all__"
        widgets={
            ''
        }


