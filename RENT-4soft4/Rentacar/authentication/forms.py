from django import forms
from django.forms import ModelForm 
#from fleet.models import UserProfileModel
#from captcha.fields import CaptchaField
from captcha.fields import CaptchaField


class CaptchaForm(forms.Form):
    captcha = CaptchaField()

    
'''
class LoginForm(ModelForm):
    class Meta:
        model=UserProfileModel
        fields="__all__"
        widgets={
            ''
        }


'''