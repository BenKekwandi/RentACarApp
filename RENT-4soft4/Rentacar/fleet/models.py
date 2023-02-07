from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class Profile(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    #user_id=models.IntegerField()
    profile_picture=models.ImageField(default='default.jpg')
    def __str__(self):
        return 'user_profile'
#customer models
class UserTypeModel(models.Model): 
    type=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="user_type"
class FileUploadModel(models.Model):
    file_name=models.CharField(max_length=255)
    file_path=models.CharField(max_length=255)
    file_type_id=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="files"
class FileTypeModel(models.Model):
    file_type=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="file_type"
class CustomerTypeModel(models.Model):
    type=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="customer_type"
class CustomerBlackListModel(models.Model):
    type=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="customer_black_list"    
class CustomerModel(models.Model):
    #id=models.IntegerField()
    type_id=models.IntegerField()
    black_list=models.IntegerField()
    customer_title=models.CharField(max_length=100)
    first_name=models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    father_name = models.CharField(max_length=100)
    mother_name = models.CharField(max_length=100)
    date_of_birth = models.DateField()
    place_of_birth=models.CharField(max_length=100)
    country=models.CharField(max_length=100)
    phone_number = models.CharField(max_length=100)
    cell_phone_1= models.CharField(max_length=100)
    cell_phone_2= models.CharField(max_length=100)
    home_phone = models.CharField(max_length=100)
    job=models.CharField(max_length=100)
    student=models.IntegerField()
    student_id=models.IntegerField()
    business_phone = models.CharField(max_length=100)
    office_phone = models.CharField(max_length=100)
    business_address=models.CharField(max_length=100)
    home_address = models.CharField(max_length=100)
    local_address= models.CharField(max_length=100)
    nationality = models.CharField(max_length=100)
    email= models.CharField(max_length=100)
    email_2=models.CharField(max_length=100)
    passport_no = models.CharField(max_length=100)
    blood_group=models.CharField(max_length=5)
    license_number = models.CharField(max_length=100)
    license_issue_date = models.DateField()
    license_issue_place = models.CharField(max_length=100)
    account_tl=models.IntegerField()
    account_dollar=models.IntegerField()
    account_euro=models.IntegerField()
    account_pound=models.IntegerField()
    system_note=models.CharField(max_length=200)
    #customer_file1=models.CharField(max_length=255)
    #customer_file2=models.CharField(max_length=255)
    #customer_file3=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="customers"
        
    
    
#student model

class StudentModel(models.Model):
    student_number=models.CharField(max_length=100)
    department=models.CharField(max_length=100)
    school=models.CharField(max_length=100)
    section=models.CharField(max_length=100)
    class Meta:
        db_table="students"


#Contract Model
class ContractStatusModel(models.Model):
    contract_status=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="contract_status"
         
class ContractModel(models.Model):
    contract_number=models.CharField(max_length=100)
    company=models.IntegerField()
    #contract_for = customer type
    contract_for=models.CharField(max_length=100)
    contract_status_id=models.IntegerField()
    vehicle_id=models.IntegerField()
    issue_date_and_time=models.DateTimeField()
    rent_days=models.IntegerField()
    return_date_and_time=models.DateTimeField()
    issue_point=models.CharField(max_length=100)
    return_point=models.CharField(max_length=100)
    early_delivery_date=models.DateTimeField()
    vehicle_issue_address=models.CharField(max_length=100)
    vehicle_return_address=models.CharField(max_length=100)
    customer_id=models.IntegerField()
    payment_total_fee=models.FloatField()
    debt = models.FloatField()
    amount_paid=models.FloatField()
    payment_currency=models.IntegerField()
    agent_fee=models.FloatField()
    agent_percentage=models.FloatField()
    intermediary_company_account=models.IntegerField()
    payment_completion=models.IntegerField()
    #contract_file1=models.CharField(max_length=100)
    #contract_file2=models.CharField(max_length=100)
    #contract_file3=models.CharField(max_length=100)
    #contract_file4=models.CharField(max_length=100)
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="new_contract"
class ContractHistoryModel(models.Model):
    contract_id = models.IntegerField()
    situation=models.CharField(max_length=500)
    note=models.CharField(max_length=500)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="contract_history"
class AccountingEventModel(models.Model):
    event_type_id = models.IntegerField()
    fee_amount=models.FloatField()
    currency_id=models.IntegerField()
    payment_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="accounting_event"
class AccountingEventTypeModel(models.Model):
    event_type = models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="accounting_event_type"
class AdditionalToolUserModel(models.Model):
    full_name=models.CharField(max_length=100)
    passport_number=models.CharField(max_length=100)
    birth_date=models.DateField()
    nationality=models.CharField(max_length=100)
    telephone=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="addition_tool_users"
class ReservationStatusModel(models.Model):
    status=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="reservation_status"        
class ReservationModel(models.Model):
    reservation_status_id=models.IntegerField()
    customer_id=models.IntegerField()
    reservation_maker_id=models.IntegerField()
    vehicle_id=models.IntegerField()
    purchase_date=models.DateField()
    pick_up_time=models.TimeField()
    pick_up_place=models.CharField(max_length=100)
    registration_date=models.DateTimeField(auto_now_add=True)
    flight_number=models.CharField(max_length=100)
    total_fee=models.FloatField()
    currency_id=models.IntegerField()
    vehicle_full_address=models.CharField(max_length=200)
    vehicle_delivery_address=models.CharField(max_length=200)
    vehicle_delivery_date=models.DateField()
    vehicle_delivery_time=models.TimeField()
    vehicle_return_place=models.CharField(max_length=100)
    return_flight_number=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="new_reservation"
        
class PlaceModel(models.Model):
    place_name=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="place"
#vehicles 
class VehicleModel(models.Model):
    vehicle_owner=models.CharField(max_length=100)
    vehicle_model_id=models.IntegerField()
    vehicle_plate_number=models.CharField(max_length=100)
    traffic_release_year=models.IntegerField()
    region_location=models.CharField(max_length=100)
    vehicle_status_id=models.IntegerField()
    vehicle_status=models.CharField(max_length=100)
    rent_start=models.DateTimeField(auto_now_add=False)
    rent_end=models.DateTimeField(auto_now_add=False)
    input_km=models.FloatField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta: 
        db_table="vehicles"    
class VehicleBrandModel(models.Model):
    brand_name=models.CharField(max_length=100)
    #vehicle_brand_picture=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    
    class Meta: 
        db_table="vehicle_brand"
        

class VehicleTypeModel(models.Model):
    type_name=models.CharField(max_length=100)
    max_num_of_person=models.IntegerField()
    max_small_suitcase=models.IntegerField()
    max_large_suitcase=models.IntegerField()
    #vehicle_type_picture=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta: 
        db_table="vehicle_type"

class VehicleModelModel(models.Model):
    vehicle_type_id=models.IntegerField()
    vehicle_model=models.CharField(max_length=100)
    number_of_doors=models.IntegerField()
    #vehicle_brand_id=models.IntegerField()
    vehicle_price_class_id=models.IntegerField()
    model_year=models.IntegerField()
    fuel_type=models.CharField(max_length=100)
    gear=models.CharField(max_length=100)
    large_suitcase=models.IntegerField()
    small_suitcase=models.IntegerField()
    number_of_passengers=models.IntegerField()
    components=models.CharField(max_length=200)
    #vehicle_model_picture=models.CharField(max_length=255)
    #vehicle_model_picture2=models.CharField(max_length=255)
    #vehicle_model_picture3=models.CharField(max_length=255)
    #vehicle_model_picture4=models.CharField(max_length=255)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta: 
        db_table="vehicle_model"
        
class VehicleStatusModel(models.Model):
    status=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_status"
class VehicleCapacityModel(models.Model):
    number_of_passengers=models.IntegerField()
    BV=models.IntegerField()
    KV=models.IntegerField()
    class Meta:
        db_table="vehicle_capacity"
class VehiclePriceClassModel(models.Model):
    price_class=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_price_class"
class VehicleComponentModel(models.Model):
    component_name=models.CharField(max_length=100)
    class Meta:
        db_table="vehicle_components"
class VehiclePaymentReminderModel(models.Model):
    vehicle_id=models.IntegerField()
    payment_date=models.DateField(auto_now_add=True)
    fee_amount=models.FloatField()
    explanation=models.CharField(max_length=20000)
    currency_id=models.IntegerField()
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_payment_reminder"
    
class CurrentAccountModel(models.Model):
    customer_id=models.IntegerField()
    account_type_id=models.IntegerField()
    account_name=models.CharField(max_length=100)
    account_currency_id=models.CharField(max_length=100)
    explanation=models.CharField(max_length=1000)
    balance=models.FloatField()
    contract_id=models.IntegerField()
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="current_account"
class AccountHistoryModel(models.Model):
    account_id=models.IntegerField()
    amount=models.FloatField()
    notes=models.CharField(max_length=10000)
    currency_id=models.IntegerField()
    account_operation_id=models.IntegerField()
    accounting_event=models.IntegerField()
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="account_history"
class AccountOperationModel(models.Model):
    account_operation=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="account_operation"
class AccountStatementModel(models.Model):
    account_id=models.IntegerField()
    category=models.CharField(max_length=100)
    payment_date=models.DateField()
    situation=models.CharField(max_length=100)
    notes=models.CharField(max_length=500)
    fee_amount=models.FloatField()
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="account_statement"
class AccountingItemModel(models.Model):
    item_name=models.CharField(max_length=100)
    category=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="accounting_item"
class AccountTypeModel(models.Model):
    account_type_name=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="account_type"
class CategoryModel(models.Model):
    category_name=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="category"
class CompanyModel(models.Model):
    company_name=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="company"
class CurrencyModel(models.Model):
    currency_code=models.CharField(max_length=100)
    exchange_rate=models.FloatField()
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="currencies"

class ExpenseModel(models.Model):
    provider_account_id=models.IntegerField()
    accounting_item_id=models.IntegerField()
    invoice_id=models.IntegerField()
    payment_method_id=models.IntegerField()
    currency_id=models.IntegerField()
    fee_amount=models.FloatField()
    payment_date=models.DateTimeField(auto_now_add=True)
    exchange_rate=models.FloatField()
    expense_category=models.CharField(max_length=100)
    explanation=models.CharField(max_length=1000)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="expense"
class IncomeModel(models.Model):
    paying_account_id=models.IntegerField()
    accounting_item_id=models.IntegerField()
    invoice_id=models.IntegerField()
    payment_method_id=models.IntegerField()
    currency_id=models.IntegerField()
    fee_amount=models.FloatField()
    payment_date=models.DateTimeField(auto_now_add=True)
    exchange_rate=models.FloatField()
    collection_category=models.CharField(max_length=100)
    explanation=models.CharField(max_length=1000)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="income"
class InvoiceModel(models.Model):
    invoice_date=models.DateTimeField(auto_now_add=True)
    current_account_id=models.IntegerField()
    accounting_item_id=models.IntegerField()
    collection_date=models.DateField(auto_now_add=True)
    currency_id=models.IntegerField()
    invoice_number=models.CharField(max_length=100)
    fee_amount=models.FloatField()
    explanation=models.CharField(max_length=1000)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="invoice"
class PaymentModel(models.Model):
    payment_method_id=models.IntegerField()
    payment_status_id=models.IntegerField()
    payment_for=models.IntegerField()
    amount_fee=models.FloatField()
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="payment"
class PaymentForModel(models.Model):
    reason=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="payment_for"
class ContractPaymentModel(models.Model):
    payment_id=models.IntegerField()
    contract_id=models.IntegerField()
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="contract_payment"
class ReservationPaymentModel(models.Model):
    payment_id=models.IntegerField()
    reservation_id=models.IntegerField()
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="reservation_payment"
class PaymentMethodModel(models.Model):
    method=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="payment_method"
class PaymentStatusModel(models.Model):
    status_name=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="payment_status"
class PricingMethodModel(models.Model):
    pricing=models.CharField(max_length=100)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="pricing_method"
class VehicleExpenseModel(models.Model):
    service_company_id=models.IntegerField()
    vehicle_id=models.IntegerField()
    invoice_id=models.IntegerField()
    payment_method_id=models.IntegerField()
    currency_id=models.IntegerField()
    fee_amount=models.FloatField()
    payment_date=models.DateTimeField(auto_now_add=True)
    exchange_rate=models.FloatField()
    expense_category=models.CharField(max_length=100)
    explanation=models.CharField(max_length=1000)
    created_at= models.DateTimeField(auto_now_add=True)
    updated_at= models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_expense"
class SystemReminderModel(models.Model):
    title=models.CharField(max_length=100)
    content=models.CharField(max_length=20000)
    reminder_type_id=models.CharField(max_length=1000)
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="system_reminder"
class SystemReminderTypeModel(models.Model):
    reminder_type=models.CharField(max_length=500)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="system_reminder_type"

class VehicleHistoryModel(models.Model):
    vehicle_id=models.IntegerField()
    operation_type=models.CharField(max_length=2500)
    explanation=models.CharField(max_length=5000)
    title=models.CharField(max_length=2500)
    operation_status_id=models.IntegerField()
    registration_date=models.DateTimeField(auto_now_add=True)
    user=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_history"
class OperationStatusModel(models.Model):
    op_status=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="operation_status"
class OperationTypeModel(models.Model):
    operation_type=models.CharField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_operation"
class VehicleMaintenanceModel(models.Model):
    vehicle_id=models.IntegerField()
    date_entry=models.DateTimeField(auto_now_add=True)
    release_date=models.DateTimeField(auto_now_add=True)
    explanation=models.CharField(max_length=1000)
    amount=models.FloatField()
    currency_id=models.IntegerField()
    care_place=models.CharField(max_length=1000)
    input_km=models.FloatField()
    registration_date=models.DateTimeField(auto_now_add=True)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="vehicle_maintenance"
class DefaultPaymentModel(models.Model):
    payment_id=models.IntegerField()
    account_id=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="default_payment"
class FoundPaymentModel(models.Model):
    payment_id=models.IntegerField()
    cash_account=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="found_payment"
class CreditCardPaymentModel(models.Model):
    payment_id=models.IntegerField()
    bank_pos_account=models.IntegerField()
    bank_intermediation_fee=models.FloatField()
    card_holder=models.CharField(max_length=500)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="credit_card_payment"
class MailOrderPaymentModel(models.Model):
    payment_id=models.IntegerField()
    pos_account=models.IntegerField()
    brokerage_fee=models.FloatField()
    card_type_provider=models.CharField(max_length=100)
    card_number=models.CharField(max_length=100)
    card_holder=models.CharField(max_length=100)
    cvc_code=models.CharField(max_length=20)
    expiry_year=models.IntegerField()
    expiry_month=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="mail_order_payment"
class CheckPaymentModel(models.Model):
    payment_id=models.IntegerField()
    check_number=models.CharField(max_length=100)
    checking_account=models.IntegerField()
    check_holder=models.CharField(max_length=100)
    cash_time=models.DateField()
    receipt_time=models.DateField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="check_payment"
class TransferPaymentModel(models.Model):
    payment_id=models.IntegerField()
    transfer_account=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="transfer_payment"
class RegionModel(models.Model):
    region_name=models.CharField(max_length=200)
    zone_type=models.CharField(max_length=200)
    upper_region=models.CharField(max_length=200)
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="regions"
class StopModel(models.Model):
    type=models.CharField(max_length=200)
    name=models.CharField(max_length=200)
    address=models.CharField(max_length=2000)
    region_id=models.IntegerField()
    sequence_no=models.IntegerField()
    created_at=models.DateTimeField(auto_now_add=True)
    updated_at=models.DateTimeField(auto_now_add=True)
    class Meta:
        db_table="stops"