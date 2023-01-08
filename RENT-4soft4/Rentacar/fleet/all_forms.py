from django import forms
from django.forms import ModelForm
from fleet.models import CustomerModel
from fleet.models import CustomerTypeModel
from fleet.models import CustomerBlackListModel
from fleet.models import ContractModel
from fleet.models import ReservationModel
from fleet.models import ReservationStatusModel
from fleet.models import StudentModel
from fleet.models import VehicleModel
from fleet.models import VehicleModelModel
from fleet.models import VehicleBrandModel
from fleet.models import VehicleTypeModel
from fleet.models import VehicleStatusModel
from fleet.models import VehicleCapacityModel   
from fleet.models import VehiclePriceClassModel
from fleet.models import VehicleComponentModel
from fleet.models import CurrentAccountModel
from fleet.models import CurrencyModel
from fleet.models import CategoryModel
from fleet.models import CompanyModel
from fleet.models import AccountingItemModel
from fleet.models import AccountTypeModel
from fleet.models import ExpenseModel
from fleet.models import VehicleExpenseModel
from fleet.models import IncomeModel
from fleet.models import InvoiceModel
from fleet.models import PaymentMethodModel
from fleet.models import PaymentStatusModel
from fleet.models import PricingMethodModel
from fleet.models import PlaceModel
from fleet.models import AdditionalToolUserModel
from fleet.models import UserModel
from fleet.models import UserTypeModel
from fleet.models import AccountingEventModel
from fleet.models import AccountingEventTypeModel
from fleet.models import VehiclePaymentReminderModel
from fleet.models import FileUploadModel
from fleet.models import FileTypeModel
from fleet.models import ContractStatusModel

# Create your forms here.

class UserTypeForm(ModelForm):
    class Meta:
        model=UserTypeModel
        fields='__all__'

class FileTypeForm(ModelForm):
    class Meta:
        model=FileTypeModel
        fields='__all__'
class UserForm(ModelForm):
    class Meta:
        model=UserModel
        fields='__all__'
class CustomerTypeForm(ModelForm):
    class Meta:
        model=CustomerTypeModel
        fields='__all__'
class CustomerBlackListForm(ModelForm):
    class Meta:
        model=CustomerBlackListModel
        fields='__all__'   
class CustomerForm(ModelForm):
    class Meta:
        model=CustomerModel
        fields='__all__'
class StudentForm(ModelForm):
    class Meta:
        model=StudentModel
        fields='__all__'
class ContractStatusForm(ModelForm):
    class Meta:
        model=ContractStatusModel
        fields='__all__'  
        
class ContractForm(ModelForm):
    class Meta:
        model=ContractModel
        fields='__all__'
        
class AccountingEventForm(ModelForm):
    class Meta:
        model=AccountingEventModel
        fields='__all__'
class AccountingEventTypeForm(ModelForm):
    class Meta:
        model=AccountingEventTypeModel
        fields='__all__'
class AdditionalToolUserForm(ModelForm):
    class Meta:
        model=AdditionalToolUserModel
        fields='__all__'
class ReservationStatusForm(ModelForm):
    class Meta:
        model=ReservationStatusModel
        fields='__all__' 
               
class ReservationForm(ModelForm):
    class Meta:
        model=ReservationModel
        fields='__all__'
        
class PlaceForm(ModelForm):
    class Meta:
        model=PlaceModel
        fields='__all__'


class VehicleForm(ModelForm):
    class Meta:
        model=VehicleModel
        fields='__all__' 
     
class VehicleBrandForm(ModelForm): 
    class Meta:
        model=VehicleBrandModel
        fields='__all__' 
        
class VehicleTypeForm(ModelForm):
    class Meta:
        model=VehicleTypeModel
        fields='__all__' 

class VehicleModelForm(ModelForm):
    class Meta:
        model=VehicleModelModel
        fields='__all__' 
        
class VehicleStatusForm(ModelForm):
    class Meta:
        model=VehicleStatusModel
        fields='__all__'
class VehicleCapacityForm(ModelForm):
    class Meta:
        model=VehicleCapacityModel
        fields='__all__'
class VehiclePriceClassForm(ModelForm):
    class Meta:
        model=VehiclePriceClassModel
        fields='__all__'
class VehicleComponentForm(ModelForm):
    class Meta:
        model=VehicleComponentModel
        fields='__all__'
class VehiclePaymentReminderForm(ModelForm):
    class Meta:
        model=VehiclePaymentReminderModel
        fields='__all__'
    
class CurrentAccountForm(ModelForm):
    class Meta:
        model=CurrentAccountModel
        fields='__all__'

class AccountingItemForm(ModelForm):
    class Meta:
        model=AccountingItemModel
        fields='__all__'
class AccountTypeForm(ModelForm):
    class Meta:
        model=AccountTypeModel
        fields='__all__'
class CategoryForm(ModelForm):
    class Meta:
        model=CategoryModel
        fields='__all__'
class CompanyForm(ModelForm):
    class Meta:
        model=CompanyModel
        fields='__all__'
class CurrencyForm(ModelForm):
    class Meta:
        model=CurrencyModel
        fields='__all__'

class ExpenseForm(ModelForm):
    class Meta:
        model=ExpenseModel
        fields='__all__'
class IncomeForm(ModelForm):
    class Meta:
        model=IncomeModel
        fields='__all__'
class InvoiceForm(ModelForm):
    class Meta:
        model=InvoiceModel
        fields='__all__'
class PaymentMethodForm(ModelForm):
    class Meta:
        model=PaymentMethodModel
        fields='__all__'
class PaymentStatusForm(ModelForm):
    class Meta:
        model=PaymentStatusModel
        fields='__all__'
class PricingMethodForm(ModelForm):
    class Meta:
        model=PricingMethodModel
        fields='__all__'
class VehicleExpenseForm(ModelForm):
    class Meta:
        model=VehicleExpenseModel
        fields='__all__'
