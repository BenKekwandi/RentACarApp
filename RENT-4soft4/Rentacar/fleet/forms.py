from django import forms
from django.forms import ModelForm
from fleet.models import FileUploadModel
from fleet.models import VehicleModel
from fleet.models import VehicleModelModel
from fleet.models import VehicleBrandModel
from fleet.models import VehicleTypeModel
from fleet.models import ContractModel
from fleet.models import CustomerModel
from fleet.models import CurrentAccountModel
from fleet.models import DefaultPaymentModel
from fleet.models import FoundPaymentModel
from fleet.models import CreditCardPaymentModel
from fleet.models import MailOrderPaymentModel
from fleet.models import CheckPaymentModel
from fleet.models import TransferPaymentModel

class FileUploadForm(ModelForm):
    file_self=forms.FileField(widget=forms.FileInput(attrs={
        'class':'form-control',
        'name':'file'
    }))
    class Meta:
        model=FileUploadModel
        fields=["file_self"]
class VehicleForm(ModelForm):
    vehicle_picture=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_picture'
    }))
    class Meta:
        model=VehicleModel
        fields=["vehicle_picture"]
    
class VehicleBrandForm(ModelForm):
    vehicle_brand_picture=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_brand_picture'
    }))
    class Meta:
        model=VehicleBrandModel
        fields=["vehicle_brand_picture"]
class VehicleModelForm(ModelForm):
    vehicle_model_picture1=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_model_picture1'
    }))
    vehicle_model_picture2=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_model_picture2'
    }))
    vehicle_model_picture3=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_model_picture3'
    }))
    vehicle_model_picture4=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_model_picture4'
    }))
    class Meta:
        model=VehicleModelModel
        fields=["vehicle_model_picture1", "vehicle_model_picture2", "vehicle_model_picture3","vehicle_model_picture4"]
class CustomerForm(ModelForm):
    customer_file1=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'customer_file1'
    }))
    customer_file2=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'customer_file2'
    }))
    customer_file3=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'customer_file3'
    }))
    class Meta:
        model=CustomerModel
        fields=["customer_file1", "customer_file2","customer_file3"]
class VehicleTypeForm(ModelForm):
    vehicle_type_picture=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'vehicle_type_picture'
    }))
    class Meta:
        model=VehicleTypeModel
        fields=["vehicle_type_picture"]
class ContractForm(ModelForm):
    contract_file1=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'contract_file1'
    }))
    contract_file2=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'contract_file2'
    }))
    contract_file3=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'contract_file3'
    }))
    contract_file4=forms.FileField(widget=forms.FileInput(attrs={
    'class':'form-control',
    'name':'contract_file4'
    }))
    class Meta:
        model=ContractModel
        fields=["contract_file1","contract_file2","contract_file3","contract_file4"]

class DefaultPaymentForm(ModelForm):
    accounts=CurrentAccountModel.objects.all()
    account_names=[]
    i=0
    for account in accounts:
        i=i+1
        account_names.append([i,account.account_name])
    debited_account=forms.ChoiceField(widget=forms.Select(attrs={
        'class':'form-select',
        'name':'debited_account'
    }),choices=account_names)
    class Meta:
        model=DefaultPaymentModel
        fields=["debited_account"]
        labels={
            'debited_account': 'Account to be debited'
        }
class DefaultPaymentModel:
    class Meta:
        model=DefaultPaymentModel
        fields=["debited_account"]
class FoundPaymentModel:
    class Meta:
        model=FoundPaymentModel
        fields=["debited_account"]
class CreditCardPaymentModel:
    class Meta:
        model=CreditCardPaymentModel
        fields=["debited_account"]
class MailOrderPaymentModel:
    class Meta:
        model=MailOrderPaymentModel
        fields=["debited_account"]
class CheckPaymentModel:
    class Meta:
        model=CheckPaymentModel
        fields=["debited_account"]
class TransferPaymentModel:
    class Meta:
        model=TransferPaymentModel
        fields=["debited_account"]