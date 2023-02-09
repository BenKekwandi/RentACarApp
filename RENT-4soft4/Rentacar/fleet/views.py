from django.shortcuts import render, redirect
from django.http import HttpResponse,Http404
from django.contrib import messages
from django.template import Context,Template
from django.utils.translation import gettext,pgettext
from datetime import timedelta
import datetime
from datetime import date
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
from fleet.models import PaymentModel
from fleet.models import DefaultPaymentModel
from fleet.models import FoundPaymentModel
from fleet.models import CreditCardPaymentModel
from fleet.models import MailOrderPaymentModel
from fleet.models import CheckPaymentModel
from fleet.models import TransferPaymentModel
from fleet.models import AccountHistoryModel
from random import randint
#from fleet.forms import CustomerForm
#from fleet.forms import UserForm
from fleet.models import UserTypeModel
from fleet.models import AccountingEventModel
from fleet.models import AccountingEventTypeModel
from fleet.models import VehiclePaymentReminderModel
from fleet.models import FileUploadModel
from fleet.models import FileTypeModel
from fleet.models import ContractStatusModel
from fleet.models import SystemReminderModel
from fleet.models import SystemReminderTypeModel
from fleet.models import PaymentMethodModel
from fleet.models import VehicleHistoryModel
from fleet.models import OperationTypeModel
from fleet.models import VehicleMaintenanceModel
from fleet.models import AccountTypeModel
from fleet.models import VehicleMaintenanceModel
from fleet.models import VehicleHistoryModel
from fleet.models import RegionModel
from fleet.models import StopModel
from fleet.models import AccountStatementModel
from fleet.models import ContractHistoryModel
from fleet.models import ContractPaymentModel
from fleet.models import ReservationPaymentModel
from fleet.models import PaymentForModel
from fleet.models import OperationStatusModel
from fleet.models import Profile
#from fleet.forms import VehicleBrandForm
#from fleet.forms import VehicleTypeForm
#from fleet.forms import VehicleModelForm
from fleet.forms import FileUploadForm
from fleet.forms import CustomerForm
from fleet.forms import VehicleModelForm
from fleet.forms import VehicleTypeForm
from fleet.forms import VehicleBrandForm
from fleet.forms import VehicleForm
from fleet.forms import ContractForm
from fleet.forms import DefaultPaymentForm
from fleet.all_forms import ReservationForm
from fleet.files import handle_uploaded_file
from forex_python.converter import CurrencyRates
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.template import RequestContext
from fpdf import FPDF
import reportlab  
from reportlab.pdfgen import canvas
from django.urls import reverse_lazy
from fleet.forms import CreateProfileForm
from fleet.forms import EditProfileForm
from fleet.forms import ViewProfileForm
from django.views import generic
from django.views.generic.edit import CreateView
from django.views.generic.edit import UpdateView
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

def test(request):
    if request.method=='POST':
        if request.POST.get('submit1'):
            text=request.POST.get('test_input_1')
            print('*****************************************************'+text+'********************************')
            return redirect('/fleet/')
        if request.POST.get('submit2'):
            text=request.POST.get('test_input_2')
            print('*****************************************************'+text+'********************************')
            return redirect('/authentication/admin-login')
    return render(request,'test_form.html')

def handler404(request, exception, template_name="404.html"):
    return render(request, '404.html', status=404)
def handler500(request, *args, **argv):
    return render(request, '500.html', status=500)

def reminder(request):
    reminders=[]
    rent_count=0
    return_vehicle=0
    reminders_count=0
    for contract in ContractModel.objects.all():
        if contract.debt>0 and contract.payment_completion==0:
            rent_count=rent_count+1
            reminder={
            'title':'Rental fee non-paid yet',
            'content':'Rental fees for Contract #'+str(contract.id)+' Vehicle '+VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number+' have not been paid yet '+'debt:'+str(contract.debt)+CurrencyModel.objects.get(id=contract.payment_currency).currency_code,
            'reminder_type_id':SystemReminderTypeModel.objects.get(reminder_type='VEHICLE RENT PAYMENT').id,
            'type':'object'
            }
            reminders.append(reminder)
    for vehicle in VehicleModel.objects.filter(vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id):
        if vehicle.rent_end>datetime.datetime.now() and vehicle.rent_end<datetime.datetime.now()+timedelta(days=10):
            return_vehicle=return_vehicle+1
            reminder={
            'title':'Vehicle returning soon',
            'content':'Vehicle '+VehicleModel.objects.get(id=vehicle.id).vehicle_plate_number+' will be returned soon.#Remaining days : '+str((vehicle.rent_end-datetime.datetime.now()).days)+' days',
            'reminder_type_id':SystemReminderTypeModel.objects.get(reminder_type='VEHICLE RETURN SOON').id,
            'type':'object'
            }
            reminders.append(reminder)
    for remind in VehiclePaymentReminderModel.objects.all():
        reminders_count=reminders_count+1
        reminder={
            'title':'Vehicle Payment Reminder',
            'content':'Vehcle '+VehicleModel.objects.get(id=remind.vehicle_id).vehicle_plate_number+' '+str(remind.explanation),
            'reminder_type_id':SystemReminderTypeModel.objects.get(reminder_type='MANUAL REMINDERS').id,
            'type':'object'
        }
        reminders.append(reminder)
    counts={
        'rent_count':rent_count,
        'return_vehicle':return_vehicle,
        'reminders_count':reminders_count,
        'type':'count'
    }
    reminders.append(counts)
    return reminders

def actual(request):
    #CurRates=CurrencyRates()
    #for currency in CurrencyModel.objects.all():
        #if currency.currency_code!='TL':
            #currency.exchange_rate=CurRates.get_rate(currency.currency_code,'TRY',datetime.datetime.now())
            #currency.updated_at=datetime.datetime.now()
            #currency.save()
    #print("Currencies' exchange rates perfecty updated")
    for contract in ContractModel.objects.all():
        car=VehicleModel.objects.get(id=contract.vehicle_id)
        this_contract=ContractModel.objects.get(id=contract.id)
        if contract.return_date_and_time<=datetime.datetime.now():
            this_contract.contract_status_id=ContractStatusModel.objects.get(contract_status='TERMINATED').id
            this_contract.save()
            car.vehicle_status_id=VehicleStatusModel.objects.get(status='available').id
            car.vehicle_status='available'
            car.rent_start=datetime.datetime(2000, 1, 1)
            car.rent_end=datetime.datetime(2000, 1, 1)
            car.save()
            '''
            if VehicleHistoryModel.objects.get(vehicle_id=contract.vehicle_id).operation_status_id==OperationStatusModel.objects.get(op_status='opened').id:
                title='CarRental - Close Contract'
                description='Closed Contract #'+str(contract.id)
                op_type='vehicle'
                vehicle_history_insert(op_type,contract.vehicle_id,title,description,'closed')
            '''
        else:
            this_contract.contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id
            this_contract.save()
            vehicle=VehicleModel.objects.get(id=this_contract.vehicle_id)
            vehicle.rent_start=contract.issue_date_and_time
            vehicle.rent_end=contract.return_date_and_time
            vehicle.vehicle_status='rented'
            vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id
            vehicle.save()
        
    for vehicle in VehicleModel.objects.all():
        this_vehicle=VehicleModel.objects.get(id=vehicle.id)
        if vehicle.rent_start!=None and vehicle.rent_end is not None:
            counter=ContractModel.objects.filter(vehicle_id=this_vehicle.id,contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).count()
            if counter==0:
                this_vehicle.rent_start=datetime.datetime(2000, 1, 1)
                this_vehicle.rent_end=datetime.datetime(2000,1,1)
                this_vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status='available').id
                this_vehicle.vehicle_status='available'
                this_vehicle.save()
            else:
                contract=ContractModel.objects.get(vehicle_id=this_vehicle.id,contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id)
                this_vehicle.rent_start=contract.issue_date_and_time
                this_vehicle.rent_end=contract.return_date_and_time
                this_vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id
                this_vehicle.vehicle_status='rented'
                this_vehicle.save()
        else:
            this_vehicle.rent_start=datetime.datetime(2000, 1, 1)
            this_vehicle.rent_end=datetime.datetime(2000, 1, 1)
            this_vehicle.save()      
    tl_safe=0
    euro_safe=0
    dollar_safe=0
    pound_safe=0
    tl_daily=0
    dollar_daily=0
    pound_daily=0
    euro_daily=0
    tl_month=0
    dollar_month=0
    pound_month=0
    euro_month=0
    total_contract=ContractModel.objects.all().count()
    ongoing_contract=ContractModel.objects.filter(contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).count
    customers=CustomerModel.objects.all().count()
    vehicles=VehicleModel.objects.all().count()
    available_vehicles=VehicleModel.objects.filter(vehicle_status='available').count()
    unused_vehicles=VehicleModel.objects.filter(vehicle_status='unused').count()
    maintenance_vehicles=VehicleModel.objects.filter(vehicle_status='in_maintenance').count()
    rental_vehicles=VehicleModel.objects.filter(vehicle_status='rented').count()
    at_the_moment_vehicles=VehicleModel.objects.filter(vehicle_status='available').count()
    takeback_tools=VehicleModel.objects.filter(vehicle_status='in_maintenance').count()
    return_tomorrow=VehicleModel.objects.filter(rent_end=date.today()+timedelta(days=1)).count()
    delivered_today=VehicleModel.objects.filter(rent_start=date.today()).count()
    new_reservations=ReservationModel.objects.all().count()
    close_reservations=ReservationModel.objects.filter().count()
    for account_history in AccountHistoryModel.objects.filter(account_id=CurrentAccountModel.objects.get(account_name='CASH - TL').id):
        if account_history.accounting_event==AccountingEventTypeModel.objects.get(event_type='income').id:
            tl_safe+=account_history.amount
            if account_history.registration_date.month==datetime.datetime.now().month:
                tl_month+=account_history.amount
            if account_history.registration_date.date()==datetime.datetime.now().date():
                tl_daily+=account_history.amount
    for account_history in AccountHistoryModel.objects.filter(account_id=CurrentAccountModel.objects.get(account_name='CASH - USD').id):
        if account_history.accounting_event==AccountingEventTypeModel.objects.get(event_type='income').id:
            dollar_safe+=account_history.amount
            if account_history.registration_date.month==datetime.datetime.now().month:
                dollar_month+=account_history.amount   
            if account_history.registration_date.date()==datetime.datetime.now().date():
                dollar_daily+=account_history.amount
    for account_history in AccountHistoryModel.objects.filter(account_id=CurrentAccountModel.objects.get(account_name='CASH - EUR').id):
        if account_history.accounting_event==AccountingEventTypeModel.objects.get(event_type='income').id:
            euro_safe+=account_history.amount
            if account_history.registration_date.month==datetime.datetime.now().month:
                euro_month+=account_history.amount    
            if account_history.registration_date.date()==datetime.datetime.now().date():
                euro_daily+=account_history.amount     
    for account_history in AccountHistoryModel.objects.filter(account_id=CurrentAccountModel.objects.get(account_name='CASH - GBP').id):
        if account_history.accounting_event==AccountingEventTypeModel.objects.get(event_type='income').id:
            pound_safe+=account_history.amount
            if account_history.registration_date.month==datetime.datetime.now().month:
                pound_month+=account_history.amount   
            if account_history.registration_date.date()==datetime.datetime.now().date():
                pound_daily+=account_history.amount
   
    dashboard_data={
        'total_safe':tl_safe,
        'dollar_safe':dollar_safe,
        'euro_safe':euro_safe,
        'pound_safe':pound_safe,
        'tl_daily':tl_daily,
        'dollar_daily':dollar_daily,
        'pound_daily':pound_daily,
        'euro_daily':euro_daily,
        'tl_month':tl_month,
        'dollar_month':dollar_month,
        'pound_month':pound_month,
        'euro_month':euro_month,
        'total_contract':total_contract,
        'ongoing_contract':ongoing_contract,
        'vehicles':vehicles,
        'customers':customers,
        'available_vehicles':available_vehicles,
        'unused_vehicles':unused_vehicles,
        'maintenance_vehicles':maintenance_vehicles,
        'rental_vehicles':rental_vehicles,
        'at_the_moment_vehicles':at_the_moment_vehicles,
        'takeback_tools':takeback_tools,
        'return_tomorrow':return_tomorrow,
        'delivered_today':delivered_today,
        'new_reservations':new_reservations,
        'close_reservations':close_reservations
        #'reminders':reminders
    }
    #print(AccountingEventModel.objects.get(id=2).registration_date.date)
    print(" This is the payment date \n\n\n\n\n\n\n\n")
    print(CustomerModel.objects.all())
    return dashboard_data
# dashboard

def test_form(request):
    form=ReservationForm(request.POST or None, request.FILES or None)
    return render(request,'test.html',{'form':form})
def vehicle_history_insert(op_type,vehicle_id,title,description,operation_status):
    history=VehicleHistoryModel()
    history.vehicle_id=vehicle_id
    history.operation_type=op_type
    history.title=title
    history.explanation=description   
    history.operation_status_id=OperationStatusModel.objects.get(op_status=operation_status).id
    history.save()
def acc(paymentId):
    payment=PaymentModel.objects.get(id=paymentId)
    category=''
    notes=''
    fee_amount=0
    account=0
    p_date=PaymentModel.objects.get(id=paymentId).created_at
    if PaymentModel.objects.get(id=paymentId).payment_for==PaymentForModel.objects.get(reason='contract').id:
        category='Rent a Car'
        print('***********************************'+str(ContractPaymentModel.objects.get(payment_id=paymentId).id)+'**********************************************************************************')
        contract=ContractModel.objects.get(id=ContractPaymentModel.objects.get(payment_id=paymentId).contract_id)
        vehicle=VehicleModel.objects.get(id=ContractModel.objects.get(id=ContractPaymentModel.objects.get(payment_id=paymentId).contract_id).vehicle_id).vehicle_plate_number
        customer=str(CustomerModel.objects.get(id=ContractModel.objects.get(id=ContractPaymentModel.objects.get(payment_id=paymentId).contract_id).customer_id).first_name)+' '+str(CustomerModel.objects.get(id=ContractModel.objects.get(id=ContractPaymentModel.objects.get(payment_id=paymentId).contract_id).customer_id).last_name)
        notes='Car Rental: '+vehicle+'| '+customer+'| '+'Rental Period: '+str(contract.issue_date_and_time)+'-'+str(contract.return_date_and_time)
        fee_amount=contract.amount_paid
    elif PaymentModel.objects.get(id=paymentId).payment_for==PaymentForModel.objects.get(reason='reservation').id:
        category='Reservation'
        reservation=ReservationModel.objects.get(id=ReservationPaymentModel.objects.get(payment_id=paymentId).reservation_id)
        vehicle=VehicleModel(id=ReservationModel.objects.get(id=ReservationPaymentModel.objects.get(payment_id=paymentId).reservation_id).vehicle_id).vehicle_plate_number
        customer=str(CustomerModel(id=ReservationModel.objects.get(id=ReservationPaymentModel.objects.get(payment_id=paymentId).reservation_id).customer_id).first_name)+' '+str(CustomerModel(id=ReservationModel.objects.get(id=ReservationPaymentModel.objects.get(payment_id=default_payment.payment_id).reservation_id).customer_id).last_name)
        notes='Reservation: '+vehicle+'| '+customer+'| '+'Reservation Period: #'
        fee_amount=reservation.total_fee
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='Mail order':
        account=MailOrderPaymentModel.objects.get(payment_id=paymentId).pos_account
        notes=notes+' Payment Method: Mail Order '
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='Credit card':
        account=CreditCardPaymentModel.objects.get(payment_id=paymentId).bank_pos_account
        notes=notes+' Payment Method: Credit Card'
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='Check':
        account=CheckPaymentModel.objects.get(payment_id=paymentId).checking_account
        notes=notes+' Payment Method: Check'
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='Transfer':
        account=TransferPaymentModel.objects.get(payment_id=paymentId).transfer_account
        notes=notes+' Payment Method: Transfer'
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='found':
        account=FoundPaymentModel.objects.get(payment_id=paymentId).cash_account
        notes=notes+' Payment Method: Cash'
    if PaymentMethodModel.objects.get(id=payment.payment_method_id).method=='look for': 
        account=DefaultPaymentModel.objects.get(payment_id=paymentId).account_id 
        notes=notes+' Payment Method: System Account debit'
    account_statement(account,category,p_date,notes,fee_amount)
def account_statement(account_id,category,payment_date,notes,fee_amount):
    statement=AccountStatementModel()
    statement.account_id=account_id
    statement.category=category
    statement.payment_date=payment_date
    statement.fee_amount=fee_amount
    statement.notes=notes
    statement.save()
def acc_history(account_id,amount_fee,currency_id,notes,acc_event):
    acc_history=AccountHistoryModel()
    acc_history.account_id=account_id
    acc_history.amount=amount_fee
    acc_history.currency_id=currency_id
    acc_history.notes=notes
    acc_history.accounting_event=acc_event
    acc_history.save()
def payment_insert(method,status,fee_amount,payment_for):
    payment=PaymentModel()
    payment.amount_fee=fee_amount
    payment.payment_status_id=PaymentStatusModel.objects.get(status_name=status).id
    payment.payment_method_id=PaymentMethodModel.objects.get(method=method).id
    payment.payment_for=PaymentForModel.objects.get(reason=payment_for).id
    payment.save()
    paymentId=PaymentModel.objects.get(amount_fee=payment.amount_fee,payment_status_id=payment.payment_status_id,payment_method_id=payment.payment_method_id).id
    return paymentId
def contract_payment(payment_id,contract_id):
    contract_payment=ContractPaymentModel()
    contract_payment.payment_id=payment_id
    contract_payment.contract_id=contract_id
    contract_payment.save()
    return contract_payment.id
def reservation_payment(payment_id,reservation_id):
    reservation_payment=ReservationPaymentModel()
    reservation_payment.payment_id=payment_id
    reservation_payment.reservation_id=reservation_id
    reservation_payment.save()
def DefaultPayment_insert(payment_id,debited_account):
    default_payment=DefaultPaymentModel()
    default_payment.payment_id=payment_id
    default_payment.account_id=CurrentAccountModel.objects.get(account_name=debited_account).id
    default_payment.save()
    account=CurrentAccountModel.objects.get(id=default_payment.account_id)
    account.balance=account.balance-float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    note='Payment method: Account debited'
    return default_payment.account_id,note
def MailOrderPayment_insert(payment_id,pos_account,card_number,card_holder,cvc_code,expiry_year,expiry_month):
    mail_order=MailOrderPaymentModel()
    mail_order.pos_account=CurrentAccountModel.objects.get(account_name=pos_account).id
    mail_order.card_number=card_number
    mail_order.card_holder=card_holder
    mail_order.cvc_code=cvc_code
    mail_order.expiry_year=expiry_year
    mail_order.expiry_month=expiry_month
    mail_order.payment_id=payment_id
    mail_order.save()
    note='Payment method: Mail Order'
    account=CurrentAccountModel.objects.get(id=mail_order.pos_account)
    account.balance=account.balance-float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    return mail_order.pos_account,note
def CheckPayment_insert(payment_id,check_number,checking_account,check_holder,cash_time,receipt_time):
    check=CheckPaymentModel()
    check.check_number=check_number
    check.checking_account=CurrentAccountModel.objects.get(account_name=checking_account).id
    check.check_holder=check_holder
    check.cash_time=cash_time
    check.receipt_time=receipt_time
    check.payment_id=payment_id
    check.save()
    note='Payment method: Check'
    account=CurrentAccountModel.objects.get(id=check.checking_account)
    account.balance=account.balance-float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    return check.checking_account,note
def TransferPayment_insert(payment_id,transfer_account):
    transfer=TransferPaymentModel()
    transfer.transfer_account=CurrentAccountModel.objects.get(account_name=transfer_account).id
    transfer.payment_id=payment_id
    transfer.save()
    note='Payment method: Transfer'
    account=CurrentAccountModel.objects.get(id=transfer.transfer_account)
    account.balance=account.balance-float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    return transfer.transfer_account,note
def CreditCardPayment_insert(payment_id,bank_pos_account,bank_intermediation_fee,card_holder):
    credit_card=CreditCardPaymentModel()
    credit_card.bank_pos_account=CurrentAccountModel.objects.get(account_name=bank_pos_account).id
    credit_card.bank_intermediation_fee=bank_intermediation_fee
    credit_card.card_holder=card_holder
    credit_card.payment_id=payment_id
    credit_card.save()
    note='Payment method: Credit Card'
    account=CurrentAccountModel.objects.get(id=credit_card.bank_pos_account)
    account.balance=account.balance-float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    return credit_card.bank_pos_account,note
def FoundPayment_insert(payment_id,cash_account):
    found=FoundPaymentModel()
    found.cash_account=CurrentAccountModel.objects.get(account_name=cash_account).id
    found.payment_id=payment_id
    found.save()
    note='Payment method: Cash payment'
    account=CurrentAccountModel.objects.get(id=found.cash_account)
    account.balance=account.balance+float(PaymentModel.objects.get(id=payment_id).amount_fee)
    account.save()
    return found.cash_account,note
def test_function():
    pass
# dashboard page
@login_required(login_url='/./authentication/admin-login')
def dashboard(request):
    rented_vehicles=VehicleModel.objects.filter(vehicle_status='rented')
    #reminders=SystemReminderModel.objects.all()
    data=actual(request)
    reminders=reminder(request)
    print(request.user.profile.profile_picture.url)
    for car in rented_vehicles:
        car.customer=CustomerModel.objects.get(id=ContractModel.objects.get(vehicle_id=car.id,contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).customer_id).first_name+' '+CustomerModel.objects.get(id=ContractModel.objects.get(vehicle_id=car.id,contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).customer_id).last_name
        car.time_remaining=ContractModel.objects.get(vehicle_id=car.id,contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).return_date_and_time-datetime.datetime.now()
    return render(request, 'dashboard.html',{'data':data,'rented_vehicles':rented_vehicles,'reminders':reminders})

def file_upload(request,location):
    #return HttpResponse("Hello world, this the location "+location)
    form=FileUploadForm(request.POST,request.FILES)
    file=FileUploadModel() 
    #request.FILES['file_self']=None
    if request.method == 'POST': 
        f=request.FILES['file_self']
        file.file_name=str(request.FILES['file_self'])
        file.file_path='uploads/'+location+'/'+str(file.file_name)
        if form.is_valid() and file!=None and request.POST.get('submit')=="submit":
            file.save()
            handle_uploaded_file(location,request.FILES['file_self'])
    return render(request,'image_upload.html',{'form':form})
def insert_file(id,location,f):
    file=FileUploadModel()
    file.file_name=str(f)
    file.file_path='uploads/'+location+'/'+str(file.file_name)
    file.save()
    handle_uploaded_file(id,location,f)
@login_required(login_url='/./authentication/admin-login')
def customerCreate(request):
    reminders=reminder(request)
    customer_types=CustomerTypeModel.objects.all()
    black_lists=CustomerBlackListModel.objects.all()
    form=CustomerForm(request.POST,request.FILES)
    customer_account=CurrentAccountModel()
    currencies=CurrencyModel.objects.all()
    if request.method=='POST' and request.POST.get('submit')=='Submit':
        customer = CustomerModel()
        customer.type_id=CustomerTypeModel.objects.get(type=request.POST.get('customerType')).id
        #customer.black_list=CustomerBlackListModel.objects.get(type=request.POST.get('customerBlackList')).id
        if_student = StudentModel()
        if customer.student == 1:
            if_student.student_number = request.POST.get('studentNumber')
            if_student.school = request.POST.get('school')
            if_student.department = request.POST.get('department')
            if_student.section = request.POST.get('section')
            if_student.save()
            customer.student_id = if_student.objects.get(student_number=request.POST.get('')).id
        customer.customer_title = request.POST.get('customerTitle')
        customer.first_name = request.POST.get('firstName')
        customer.last_name = request.POST.get('surname')
        customer.father_name = request.POST.get('fatherName')
        customer.mother_name = request.POST.get('motherName')
        customer.date_of_birth = request.POST.get('birthDate')
        customer.place_of_birth = request.POST.get('birthPlace')
        customer.country = request.POST.get('country')
        customer.phone_number = request.POST.get('mobilePhone1')
        customer.cell_phone_1 = request.POST.get('homePhone1')
        customer.cell_phone_2 = request.POST.get('homePhone2')
        customer.home_phone = request.POST.get('mobilePhone2')
        customer.job = request.POST.get('job')
        customer.business_phone = request.POST.get('businessPhone')
        customer.office_phone = request.POST.get('OfficePhone')
        customer.business_address = request.POST.get('businessAddress')
        customer.home_address = request.POST.get('homeAddress')
        customer.local_address = request.POST.get('localAddress')
        customer.nationality = request.POST.get('nationality')
        customer.email = request.POST.get('email')
        customer.email_2 = request.POST.get('email2')
        customer.passport_no = request.POST.get('passportNo')
        customer.blood_group = request.POST.get('bloodGroup')
        customer.license_number = request.POST.get('licenseNo')
        customer.license_issue_date = request.POST.get('licenseDate')
        customer.license_issue_place = request.POST.get('licensePlace')
        customer.system_note = request.POST.get('systemNote')
        customer.save()
        #customer_id=CustomerModel.objects.get(first_name=customer.first_name, last_name=customer.last_name,email=customer.email,email_2=customer.email_2).id
        #insert_file(customer_id,'customers',request.FILES['customer_file1'])
        #insert_file(customer_id,'customers',request.FILES['customer_file2'])
        #insert_file(customer_id,'customers',request.FILES['customer_file3'])
        return redirect('/fleet/my-customer/')
    return render(request,'customer_management/customerCreate.html',{'customer_types': customer_types, 'black_lists': black_lists,'form':form,'currencies':currencies,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_customer(request,id):
    reminders=reminder(request)
    customer=CustomerModel.objects.get(id=id)
    return render(request,'customer_management/customer_edit.html',{'customer':customer,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_customer(request,id):
    reminders=reminder(request)
    customer=CustomerModel.objects.get(id=id)
    return render(request,'customer_management/customer_details.html',{'customer':customer,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_customer(request,id):
    customer=CustomerModel.objects.get(id=id)
    customer.delete()
    return redirect('/./fleet/my-customer/')
@login_required(login_url='/./authentication/admin-login')
def my_customers(request):
    reminders=reminder(request)
    customers = CustomerModel.objects.all()
    return render(request, 'customer_management/myCustomers.html', {'customers': customers,'reminders':reminders})

# Homepage layout
@login_required(login_url='/./authentication/admin-login')
def layoutpage(request):
    return render(request, 'layout.html')
# Rent a Car folder
@login_required(login_url='/./authentication/admin-login')
def contractCreate(request):
    reminders=reminder(request)
    customers=CustomerModel.objects.all()
    currencies=CurrencyModel.objects.all()
    places=PlaceModel.objects.all()
    vehicles=VehicleModel.objects.filter(vehicle_status_id=VehicleStatusModel.objects.get(status='available').id)
    form=ContractForm(request.POST,request.FILES)
    payment_form=DefaultPaymentForm()
    contract = ContractModel()
    payment_methods=PaymentMethodModel.objects.all()
    company_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='company').id)
    credit_card_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank credit card').id)
    transfer_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank transfer credit').id)
    cash_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='CASH').id)
    check_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank check').id)
    customer_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Individual customer').id)
    if request.method=='POST' and request.POST.get('submit')=='Submit':
        contract.customer_id=CustomerModel.objects.get(first_name=request.POST.get('customer').split()[0],last_name=request.POST.get('customer').split()[1]).id
        contract.contract_for=CustomerTypeModel.objects.get(id=CustomerModel.objects.get(id=contract.customer_id).type_id).id
        contract.company=0
        if contract.contract_for=='company':
            contract.company=1
        contract.vehicle_id=VehicleModel.objects.get(vehicle_plate_number=request.POST.get('vehicleName')).id
        rented_vehicle=VehicleModel.objects.get(id=contract.vehicle_id)
        rented_vehicle.vehicle_status='rented'
        rented_vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id
        contract.issue_date_and_time = request.POST.get('issueDateAndTime')
        contract.return_date_and_time = request.POST.get('returnDateAndTime')
        rented_vehicle.rent_start=contract.issue_date_and_time
        rented_vehicle.rent_end=contract.return_date_and_time
        #contract.issue_point=PlaceModel.objects.get(place_name=str(request.POST.get('issuePoint'))).place_name
        #contract.return_point=PlaceModel.objects.get(place_name=str(request.POST.get('ReturnPoint'))).place_name
        contract.early_delivery_date=request.POST.get('deliveryDate')
        contract.vehicle_issue_address=request.POST.get('vehicleIssueAddress')
        contract.vehicle_return_address=request.POST.get('vehicleReturnAddress')
        #tool_users=[]
        additional_user=AdditionalToolUserModel()
        additional_user.full_name=request.POST.get('addFullName1')
        additional_user.passport_number=request.POST.get('addPassportNumber1')
        additional_user.birth_date=request.POST.get('addBirthDate1')
        additional_user.nationality=request.POST.get('addNationality1')
        additional_user.telephone=request.POST.get('addTelephone1')
        #additional_user.save()
        #contract.additional_tool_user=AdditionalToolUserModel.objects.get(full_name=additional_user.full_name,passport_number=additional_user.passport_number).id
        contract.rent_days=request.POST.get('rent_days')
        contract.payment_total_fee=float(request.POST.get('totalFee'))
        contract.debt =float(contract.payment_total_fee)
        contract.payment_currency=CurrencyModel.objects.get(currency_code=request.POST.get('Currency')).id
        contract.agent_fee=request.POST.get('agentFee')
        contract.agent_percentage=request.POST.get('agenPercentage')
        if(request.POST.get('intermediaryCompanyAccount')):
            contract.intermediary_company_account=CurrentAccountModel.objects.get(account_name=request.POST.get('intermediaryCompanyAccount')).id
        accounting_event=AccountingEventModel()
        accounting_event.event_type_id=AccountingEventTypeModel.objects.get(event_type='income').id
        accounting_event.fee_amount=float(contract.payment_total_fee)
        accounting_event.currency_id=contract.payment_currency
        accounting_event.save()
        contract.payment_completion=0
        contract.amount_paid=0
        contract.contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id
        contract.save()
        contract_id=ContractModel.objects.get(customer_id=contract.customer_id,vehicle_id=contract.vehicle_id,issue_date_and_time=contract.issue_date_and_time,return_date_and_time=contract.return_date_and_time).id
        rented_vehicle.save()
        title='CarRental - New Contract'
        description='Added Contract #'+str(contract_id)
        op_type='vehicle'
        vehicle_history_insert(op_type,contract.vehicle_id,title,description,'opened')
        #insert_file(contract_id,'contracts',request.FILES['contract_file1'])
        #insert_file(contract_id,'contracts',request.FILES['contract_file2'])
        #insert_file(contract_id,'contracts',request.FILES['contract_file3'])
        #insert_file(contract_id,'contracts',request.FILES['contract_file4'])  
        return redirect('/fleet/contracts')
    return render(request, 'rent_a_car/contractCreate.html',{'customers':customers,'currencies':currencies,'places':places,'vehicles':vehicles,'form':form,'payment':payment_form,'methods':payment_methods,'credit_card_accounts':credit_card_accounts,'transfer_accounts':transfer_accounts,'cash_accounts':cash_accounts,'check_accounts':check_accounts,'customer_accounts':customer_accounts,'reminders':reminders,'company_accounts':company_accounts,})
@login_required(login_url='/./authentication/admin-login')
def contracts(request):
    reminders=reminder(request)
    contracts=ContractModel.objects.all()
    return render(request,'rent_a_car/contracts.html',{'contracts':contracts,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def contract_in_debt(request):
    reminders=reminder(request)
    contracts=ContractModel.objects.all()
    return render(request,'rent_a_car/contract_in_debt.html',{'contracts':contracts,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_contract(request,id):
    reminders=reminder(request)
    contract=ContractModel.objects.get(id=id)
    contract.customer_name=str(CustomerModel.objects.get(id=contract.customer_id).first_name+''+CustomerModel.objects.get(id=contract.customer_id).last_name)
    contract.passport=CustomerModel.objects.get(id=contract.customer_id).passport_no
    contract.birth_date=CustomerModel.objects.get(id=contract.customer_id).date_of_birth
    contract.phone_number=CustomerModel.objects.get(id=contract.customer_id).phone_number
    contract.nationality=CustomerModel.objects.get(id=contract.customer_id).nationality
    contract.birth_place=CustomerModel.objects.get(id=contract.customer_id).place_of_birth
    contract.country=CustomerModel.objects.get(id=contract.customer_id).country
    contract.father_name=CustomerModel.objects.get(id=contract.customer_id).father_name
    contract.mother_name=CustomerModel.objects.get(id=contract.customer_id).mother_name
    contract.job=CustomerModel.objects.get(id=contract.customer_id).job
    contract.vehicle=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
    contract.vehicle_name=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
    contract.issue_date_and_time=str(ContractModel.objects.get(id=id).issue_date_and_time)
    contract.return_date_and_time=str(ContractModel.objects.get(id=id).return_date_and_time)
    contract.payment_currency=CurrencyModel.objects.get(id=contract.payment_currency).currency_code
    contract=ContractModel.objects.get(id=id)
    contract.customer_name=str(CustomerModel.objects.get(id=contract.customer_id).first_name+'-'+CustomerModel.objects.get(id=contract.customer_id).last_name)
    contract.vehicle=VehicleModelModel.objects.get(id=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_model_id).vehicle_model
    return render(request,'rent_a_car/contract_view.html',{'contract':contract,'reminders':reminders})

def vehicle_change():
    pass

@login_required(login_url='/./authentication/admin-login')
def edit_contract(request,id):
    currencies=CurrencyModel.objects.all()
    reminders=reminder(request) 
    vehicles=VehicleModel.objects.filter(vehicle_status_id=VehicleStatusModel.objects.get(status='available').id)
    available_vehicles=VehicleModel.objects.filter(vehicle_status_id=VehicleStatusModel.objects.get(status='available').id).exclude(id=ContractModel.objects.get(id=id).vehicle_id)
    payment_methods=PaymentMethodModel.objects.all()
    credit_card_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank credit card').id)
    transfer_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank transfer credit').id)
    cash_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='CASH').id)
    check_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Bank check').id)
    customer_accounts=CurrentAccountModel.objects.filter(account_type_id=AccountTypeModel.objects.get(account_type_name='Individual customer').id)
    contract=ContractModel.objects.get(id=id)
    contract.customer_name=str(CustomerModel.objects.get(id=contract.customer_id).first_name+''+CustomerModel.objects.get(id=contract.customer_id).last_name)
    contract.passport=CustomerModel.objects.get(id=contract.customer_id).passport_no
    contract.birth_date=CustomerModel.objects.get(id=contract.customer_id).date_of_birth
    contract.phone_number=CustomerModel.objects.get(id=contract.customer_id).phone_number
    contract.nationality=CustomerModel.objects.get(id=contract.customer_id).nationality
    contract.birth_place=CustomerModel.objects.get(id=contract.customer_id).place_of_birth
    contract.country=CustomerModel.objects.get(id=contract.customer_id).country
    contract.father_name=CustomerModel.objects.get(id=contract.customer_id).father_name
    contract.mother_name=CustomerModel.objects.get(id=contract.customer_id).mother_name
    contract.job=CustomerModel.objects.get(id=contract.customer_id).job
    contract.vehicle=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
    contract.vehicle_name=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
    contract.issue_date_and_time=str(ContractModel.objects.get(id=id).issue_date_and_time)
    contract.return_date_and_time=str(ContractModel.objects.get(id=id).return_date_and_time)
    contract.payment_currency=CurrencyModel.objects.get(id=contract.payment_currency).currency_code
    if request.method=='POST':
        if request.POST.get('contract_extension_submit'):
            contract=ContractModel.objects.get(id=id)
            contract.return_date_and_time=request.POST.get('new_return_date')
            contract.payment_total_fee=request.POST.get('new_fee')
            contract.debt=float(contract.payment_total_fee)
            contract.return_point=request.POST.get('new_return_point')
            contract.vehicle_return_address=request.POST.get('new_return_address')
            vehicle=VehicleModel.objects.get(id=contract.vehicle_id)
            vehicle.rent_end=contract.return_date_and_time
            vehicle.save()
            op_type='Vehicle - Contract'
            title='Contract extend'
            description='Contract #'+str(contract.id)+' extended until '+str(contract.return_date_and_time)
            vehicle_history_insert(op_type,contract.vehicle_id,title,description,'closed')
            contract.save()
            return redirect('/fleet/contracts/')
        if request.POST.get('vehicle_change_submit'):
            contract=ContractModel.objects.get(id=id)
            old_vehicle=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
            contract.vehicle_id=VehicleModel.objects.get(vehicle_plate_number=request.POST.get('new_vehicle')).id
            change_date=request.POST.get('change_date')
            new_vehicle=VehicleModel.objects.get(vehicle_plate_number=request.POST.get('new_vehicle'))
            new_vehicle.vehicle_status='rented'
            new_vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id
            new_vehicle.rent_start=change_date
            new_vehicle.rent_end=contract.return_date_and_time
            new_vehicle.save()
            old_car=VehicleModel.objects.get(id=contract.vehicle_id)
            old_car.rent_start=datetime.datetime(2000,1,1)
            old_car.rent_end=datetime.datetime(2000,1,1)
            old_car.vehicle_status='available'
            old_car.vehicle_status_id=VehicleStatusModel.objects.get(status='available').id
            old_car.save()
            reason=request.POST.get('reason')
            end_position=request.POST.get('end_position')
            return_km=request.POST.get('return_km')
            transmission_km=request.POST.get('transmission_km')
            op_type='Vehicle - Change'
            title='Changed vehicle'
            description='Contract #'+str(contract.id)+'vehicle: '+old_vehicle+' changed to '+str(request.POST.get('new_vehicle'))+', reason: '+reason
            vehicle_history_insert(op_type,contract.vehicle_id,title,description,'closed')
            contract.save()
            return redirect('/fleet/contracts/')
        if request.POST.get('make_payment_submit'):
            if contract.intermediary_company_account:
                contract.intermediary_company_account_name=CurrentAccountModel.objects.get(id=contract.intermediary_company_account).account_name
            if contract.intermediary_company_account and contract.agent_fee and contract.agent_percentage:
                agent_account=CurrentAccountModel.objects.get(id=contract.intermediary_company_account)
                agent_account.balance=contract.agent_fee
                agent_account.save()
            contract=ContractModel.objects.get(id=id)
            payment_currency=request.POST.get('payment_currency')
            payment_exchange_rate=float(CurrencyModel.objects.get(currency_code=payment_currency).exchange_rate)
            paid_fee=float(request.POST.get('payment_fee'))
            contract_exchange_rate=float(CurrencyModel.objects.get(id=contract.payment_currency).exchange_rate)
            payment_fee=(paid_fee*payment_exchange_rate)/contract_exchange_rate
            payment_id=0
            if payment_fee>=contract.debt:
                payment_id=payment_insert(request.POST.get('paymentType'),'completed',payment_fee,'contract')
                contract.payment_completion=1
            else:
                payment_id=payment_insert(request.POST.get('paymentType'),'pending',payment_fee,'contract')
                contract.payment_completion=0
            contract_payment_id=contract_payment(payment_id,contract.id)
            contract.amount_paid=contract.amount_paid+payment_fee
            contract.debt=float(contract.debt)-payment_fee
            payment_id=ContractPaymentModel.objects.get(contract_id=contract.id,id=contract_payment_id).payment_id
            ac=0
            note=''
            if request.POST.get('paymentType')=='Mail order':
                ac,note=MailOrderPayment_insert(payment_id,request.POST.get('mailAccount'),request.POST.get('cardNumber'),request.POST.get('cardHolder'),request.POST.get('cvc'),request.POST.get('cardExYear'),request.POST.get('cardExMonth'))
            if request.POST.get('paymentType')=='Check':
                ac,note=CheckPayment_insert(payment_id,request.POST.get('checkingNumber'),request.POST.get('checkingAccount'),request.POST.get('checkHolder'),request.POST.get('checkCash'),request.POST.get('checkReceipt'))
            if request.POST.get('paymentType')=='Transfer':
                ac,note=TransferPayment_insert(payment_id,request.POST.get('transferredBankAcc'))
            if request.POST.get('paymentType')=='Credit card':
                ac,note=CreditCardPayment_insert(payment_id,request.POST.get('posAcc'),request.POST.get('bankFee'),request.POST.get('cardHolder'))
            if request.POST.get('paymentType')=='found':
                ac,note=FoundPayment_insert(payment_id,request.POST.get('cashAccount'))
            if request.POST.get('paymentType')=='look for':
                ac,note=DefaultPayment_insert(payment_id,request.POST.get('debitedAcc'))
            contract.save()
            acc(payment_id)
            notes=note
            acc_event=AccountingEventTypeModel.objects.get(event_type="income").id
            acc_history(ac,paid_fee,CurrencyModel.objects.get(currency_code=payment_currency).id,notes,acc_event)
            return redirect('/fleet/contracts/')
        if request.POST.get('cancel_contract_submit'):
            contract=ContractModel.objects.get(id=id)
            contract_vehicle=VehicleModel.objects.get(id=contract.vehicle_id)
            contract.return_date_and_time=datetime.datetime.now()
            contract.contract_status_id=ContractStatusModel.objects.get(contract_status="TERMINATED").id
            contract_vehicle.rent_start=datetime.datetime(2000,1,1)
            contract_vehicle.rent_end=datetime.datetime(2000,1,1)
            contract_vehicle.vehicle_status="available"
            contract_vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status="available").id
            title='Contract - Terminated'
            op_type='Vehicle contract terminated'
            description='Contract #'+str(contract.id)+' is terminated'
            vehicle_history_insert(op_type,contract.vehicle_id,title,description,'closed')
            contract.save()
            contract_vehicle.save()
            return redirect('/fleet/contracts/')
    return render(request,'rent_a_car/contract_edit.html',{'contract':contract,'available_vehicles':available_vehicles,'vehicles':vehicles,'methods':payment_methods,'customer_accounts':customer_accounts,'check_accounts':check_accounts,'credit_card_accounts':credit_card_accounts,'transfer_accounts':transfer_accounts,'cash_accounts':cash_accounts,'currencies':currencies,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_contract(request,id):
    contract=ContractModel.objects.get(id=id)
    contract.delete()
    return redirect('/./fleet/contracts/')
@login_required(login_url='/./authentication/admin-login')
def reservationCreate(request):
    reminders=reminder(request)
    customers=CustomerModel.objects.all()
    models=VehicleModelModel.objects.all()
    currencies=CurrencyModel.objects.all()
    statuses=ReservationStatusModel.objects.all()
    places=PlaceModel.objects.all()
    vehicles=VehicleModel.objects.filter(vehicle_status='available',vehicle_status_id=VehicleStatusModel.objects.get(status='available').id)
    insert_reservation(request)
    return render(request, 'rent_a_car/reservationCreate.html',{'vehicles':vehicles,'customers':customers,'currencies':currencies,'statuses':statuses,'models':models,'places':places,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def reservations(request):
    reminders=reminder(request)
    reservations=ReservationModel.objects.all()
    for reservation in reservations:
        reservation.customer=CustomerModel.objects.get(id=reservation.customer_id).first_name+' '+CustomerModel.objects.get(id=reservation.customer_id).last_name
        reservation.phone_number=CustomerModel.objects.get(id=reservation.customer_id).phone_number
        reservation.email=CustomerModel.objects.get(id=reservation.customer_id).email
        reservation.vehicle=VehicleModel.objects.get(id=reservation.vehicle_id).vehicle_plate_number
        #reservation.addresses=reservation.vehicle_delivery_address+'/'+reservation.vehicle_return_place    
    return render(request,'rent_a_car/reservations.html',{'reservartions':reservations,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_reservation(request,id):
    reminders=reminder(request)
    reservation=ReservationModel.objects.get(id=id)
    return render(request,'rent_a_car/reservation_view.html',{'reservation':reservation,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_reservation(request,id):
    reminders=reminder(request)
    reservation=ReservationModel.objects.get(id=id)
    return render(request,'rent_a_car/reservation_edit.html',{'reservation':reservation,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_reservation(request,id):
    reservation=ReservationModel.objects.get(id=id)
    reservation.delete()
    return redirect('/./fleet/reservations/')
@login_required(login_url='/./authentication/admin-login')
def instant_availability(request):
    reminders=reminder(request)
    available_vehicles=[]
    rented_vehicles=[]
    for vhcl in VehicleModel.objects.all():
        if vhcl.vehicle_status=='available':
            available_vehicles.append(vhcl)
        elif vhcl.vehicle_status=='rented':
            if vhcl.rent_end.date==datetime.datetime.today() or vhcl.rent_end.date==timedelta(days=1):
                rented_vehicles.append(vhcl)
    vehicles=available_vehicles+rented_vehicles
    types=VehicleTypeModel.objects.all()
    brands=VehicleBrandModel.objects.all()
    models=VehicleModelModel.objects.all()
    return render(request, 'rent_a_car/instant_availability.html',{'vehicles':vehicles,'types':types,'brands':brands,'models':models,'reminders':reminders})
def general_availability(request):
    reminders=reminder(request)
    vehicles=VehicleModel.objects.all()
    types=VehicleTypeModel.objects.all()
    brands=VehicleBrandModel.objects.all()
    models=VehicleModelModel.objects.all()
    year_months={'january','february','march','april','may','june','july','august','september','october','november','december'}
    months=range(1,32)
    years=range(2022,2051)
    return render(request, 'rent_a_car/general_availability.html',{'vehicles':vehicles,'types':types,'brands':brands,'models':models,'months':months,'years':years,'year_months':year_months,'reminders':reminders})
   
# end of Rent a car

# Vehicle Management folder
@login_required(login_url='/./authentication/admin-login')
def vehicle_maintenance_record(request):
    reminders=reminder(request)
    return render(request,'vehicle_management/vehicle_maintenance_record.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehicle_history(request):
    reminders=reminder(request)
    return render(request,'vehicle_management/vehicle_history.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehicle_maintenance(request):
    reminders=reminder(request)
    vehicles=VehicleModel.objects.all()
    if request.method == 'POST':
        maintenance=VehicleMaintenanceModel()
        maintenance.vehicle_id=VehicleModel(vehicle_plate_number=request.POST.get('vehicle')).id
        maintenance.date_entry=request.POST.get('loginDate')
        maintenance.release_date=request.POST.get('releaseDate')
        maintenance.input_km=request.POST.get('inputKm')
        maintenance.car_place=request.post.get('caring')
        maintenance.amount=request.POST.get('totalAmount')
        maintenance.currency_id=CurrencyModel.objects.get(currency_code=request.POST.get('currency')).id
        maintenance.explanation=request.POST.get('explanation')
        maintenance.save()
        vehicle=VehicleModel.objects.get(id=maintenance.vehicle_id)
        vehicle.input_km=request.POST.get('inputKm')
        vehicle.vehicle_status=VehicleStatusModel.objects.get(status='in_maintenance').id
        vehicle.vehicle_status='in_maintenance'
        vehicle.save()
        title='Car Care - New Care'
        description='Vehicle undergoing maintenance #'+str(maintenance.vehicle_id)+',maintenance#'+str(VehicleMaintenanceModel.objects.get(vehicle_id=maintenance.vehicle_id,entry_date=maintenance.entry_date,release_date=maintenance.release_date).id)+',check in:'+str(maintenance.entry_date)+',check out:'+str(maintenance.release_date)
        op_type='Vehicle Maintenance - New Maintenance Record'
        vehicle_history_insert(op_type,maintenance.vehicle_id,title,description,'closed')
    return render(request, 'vehicle_management/carCare.html',{'vehicles':vehicles,'reminders':reminders})
# end of Vehicle Management

# Route Management folder
@login_required(login_url='/./authentication/admin-login')
def stopCreate(request):
    reminders=reminder(request)
    return render(request, 'route_management/stopCreate.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def stop(request):
    reminders=reminder(request)
    return render(request, 'route_management/stop.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def region(request):
    reminders=reminder(request)
    return render(request, 'route_management/region.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def regionCreate(request):
    reminders=reminder(request)
    return render(request, 'route_management/regionCreate.html',{'reminders':reminders})
# end of Route Management

# Vehicle Brands folder

@login_required(login_url='/./authentication/admin-login')
def vehicleBrand(request):
    reminders=reminder(request)
    brands=VehicleBrandModel.objects.all()
    form=VehicleBrandForm()
    return render(request, 'vehicle_brands/myVehicleBrands.html',{'brands':brands,'form':form,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_vehicle_brand(request,id):
    reminders=reminder(request)
    brand=VehicleBrandModel.objects.get(id=id)
    return render(request,'vehicle_brands/vehicle_brand_edit.html',{'brand':brand,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_vehicle_brand(request,id):
    reminders=reminder(request)
    brand=VehicleBrandModel.objects.get(id=id)
    return render(request,'vehicle_brands/vehicle_brand_view.html',{'brand':brand,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_vehicle_brand(request,id):
    brand=VehicleBrandModel.objects.get(id=id)
    brand.delete()
    return redirect('/./fleet/vehicle-Brand/')
@login_required(login_url='/./authentication/admin-login')
def vehicleBrandCreate(request):
    reminders=reminder(request)
    form=VehicleBrandForm(request.POST,request.FILES)
    vehicle_brand = VehicleBrandModel()
    if request.method=='POST' and form.is_valid() and request.POST.get('submit')=='Submit':
        print("Hello that is vehicle brand field")
        vehicle_brand.brand_name=request.POST.get('vehicleBrand')
        print(request.FILES['vehicle_brand_picture'])
        vehicle_brand.save()
        brand_id=VehicleBrandModel.objects.get(brand_name=vehicle_brand.brand_name).id
        insert_file(brand_id,'vehicle_brands',request.FILES['vehicle_brand_picture'])
    return render(request, 'vehicle_brands/vehicleBrandCreate.html',{'form':form,'reminders':reminders})

# end of Vehicle Brands

# Vehicle Types folder
@login_required(login_url='/./authentication/admin-login')
def vehicleType(request):
    reminders=reminder(request)
    types=VehicleTypeModel.objects.all()
    return render(request, 'vehicle_types/myVehicleTypes.html',{'types':types,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_vehicle_type(request,id):
    reminders=reminder(request)
    type=VehicleTypeModel.objects.get(id=id)
    return render(request,'vehicle_types/vehicle_type_edit.html',{'type':type,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_vehicle_type(request,id):
    type=VehicleTypeModel.objects.get(id=id)
    return render(request,'vehicle_types/vehicle_type_view.html',{'type':type})
@login_required(login_url='/./authentication/admin-login')
def delete_vehicle_type(request,id):
    reminders=reminder(request)
    type=VehicleTypeModel.objects.get(id=id)
    type.delete()
    return redirect('/./fleet/vehicle-type/',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehicleTypeCreate(request):
    reminders=reminder(request)
    form=VehicleTypeForm(request.POST,request.FILES)
    vehicle_type = VehicleTypeModel()
    if request.method=='POST' and form.is_valid() and request.POST.get('submit')=='Submit':
        vehicle_type.type_name = request.POST.get('vehicleType')
        vehicle_type.max_num_of_person = request.POST.get('maxNoPeople')
        vehicle_type.max_small_suitcase = request.POST.get('smallSuitcase')
        vehicle_type.max_large_suitcase = request.POST.get('largeSuitcase')
        vehicle_type.save()
        type_id=VehicleTypeModel.objects.get(type_name=vehicle_type.type_name).id
        insert_file(type_id,'vehicle_types',request.FILES['vehicle_type_picture'])
    return render(request, 'vehicle_types/vehicleTypeCreate.html',{'form':form,'reminders':reminders})
# end of Vehicle Types

# Vehicle model folder

@login_required(login_url='/./authentication/admin-login')
def vehicleModel(request):
    reminders=reminder(request)
    models=VehicleModelModel.objects.all()
    return render(request, 'vehicle_models/myVehicleModel.html',{'models':models,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_vehicle_model(request,id):
    reminders=reminder(request)
    model=VehicleModelModel.objects.get(id=id)
    return render(request,'vehicle_models/vehicle_model_edit.html',{'model':model,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_vehicle_model(request,id):
    reminders=reminder(request)
    model=VehicleModelModel.objects.get(id=id)
    return render(request,'vehicle_models/vehicle_model_view.html',{'model':model,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_vehicle_model(request,id):
    model=VehicleModelModel.objects.get(id=id)
    model.delete()
    return redirect('/./fleet/vehicle-model/')
@login_required(login_url='/./authentication/admin-login')
def vehicleModelCreate(request):
    reminders=reminder(request)
    components=VehicleComponentModel.objects.all()
    types=VehicleTypeModel.objects.all()
    price_classes=VehiclePriceClassModel.objects.all()
    capacity=VehicleCapacityModel.objects.all()
    brands=VehicleBrandModel.objects.all()
    form=VehicleModelForm(request.POST,request.FILES)
    vehicle_model = VehicleModelModel()
    if request.method=='POST' and form.is_valid() and request.POST.get('submit')=='Submit':
        vehicle_model.vehicle_model=request.POST.get('vehicleModel')
        vehicle_model.number_of_doors=request.POST.get('doorsNumbers')
        vehicle_model.model_year=request.POST.get('modelYear')
        vehicle_model.fuel_type=request.POST.get('fuelType')
        vehicle_model.gear=request.POST.get('gear')
        v_comp=VehicleComponentModel.objects.all()
        mod_comp=""
        for v_c in v_comp:
            if request.POST.get(v_c.component_name)=="on":
                mod_comp=mod_comp+v_c.component_name+","    
        vehicle_model.components=mod_comp
        vbrand=request.POST.get('vehicleBrand')
        vtype=request.POST.get('vehicleType')
        vprice_class=request.POST.get('classPrice')
        vehicle_model.vehicle_type_id=VehicleTypeModel.objects.get(type_name=vtype).id
        vehicle_model.number_of_passengers=request.POST.get('maxNoPeople')
        vehicle_model.large_suitcase=request.POST.get('largeSuitcase')
        vehicle_model.small_suitcase=request.POST.get('smallSuitcase')
        vehicle_model.vehicle_capacity_id=1
        vehicle_model.vehicle_price_class_id=1
        vehicle_model.vehicle_pclass_id=VehiclePriceClassModel.objects.get(price_class=vprice_class).id
        vehicle_model.vehicle_brand_id=VehicleBrandModel.objects.get(brand_name=vbrand).id
        vehicle_model.save()
        model_id=VehicleModelModel.objects.get(vehicle_model=vehicle_model).id
        insert_file(model_id,'vehicle_models',request.FILES['vehicle_model_picture1'])
        insert_file(model_id,'vehicle_models',request.FILES['vehicle_model_picture2'])
        insert_file(model_id,'vehicle_models',request.FILES['vehicle_model_picture3'])
        insert_file(model_id,'vehicle_models',request.FILES['vehicle_model_picture4'])
    return render(request, 'vehicle_models/vehicleModelCreate.html',{'components':components,'types':types,'price_classes':price_classes,'capacity':capacity,'brands':brands,'form':form,'reminders':reminders})
# end of Vehicle model

# My Tools folder

@login_required(login_url='/./authentication/admin-login')
def vehicleCreate(request):
    reminders=reminder(request)
    models=VehicleModelModel.objects.all()
    status=VehicleStatusModel.objects.all()
    form=VehicleForm(request.POST,request.FILES)
    vehicle = VehicleModel()
    #print("This is vehicle insertion field")
    #print(request.FILES['vehicle_picture'])
    if request.method=='POST' and form.is_valid() and request.POST.get('submit')=='Submit':
        #print("Still vehicle insertion field")
        vehicle.vehicle_owner=request.POST.get('owner')
        vehicle.vehicle_plate_number=request.POST.get('plate')
        vehicle.traffic_release_year=request.POST.get('trafficYear')
        vehicle.region_location=request.POST.get('vehicleLocation')
        vmodel=request.POST.get('model')
        vehicle.vehicle_model_id=VehicleModelModel.objects.get(vehicle_model=vmodel).id   
        vstatus=request.POST.get('vehicleStatus')
        vehicle.vehicle_status_id=VehicleStatusModel.objects.get(status=vstatus).id  
        vehicle.vehicle_status=VehicleStatusModel.objects.get(id=vehicle.vehicle_status_id).status  
        vehicle.save() 
        vehicle_id=VehicleModel.objects.get(vehicle_plate_number=vehicle.vehicle_plate_number,traffic_release_year=vehicle.traffic_release_year).id
        insert_file(vehicle_id,'vehicles',request.FILES['vehicle_picture'])
    return render(request, 'my_tools/vehicleCreate.html',{'models':models,'status':status,'form':form,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_vehicle(request,id):
    reminders=reminder(request)
    vehicle=VehicleModel.objects.get(id=id)
    vehicle.vehicle_model=VehicleModelModel.objects.get(id=vehicle.vehicle_model_id).vehicle_model
    return render(request, 'my_tools/vehicle_edit.html',{'vehicle':vehicle,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_vehicle(request,id):
    reminders=reminder(request)
    vehicle=VehicleModel.objects.get(id=id)
    vehicle.vehicle_model=VehicleModelModel.objects.get(id=vehicle.vehicle_model_id).vehicle_model
    return render(request, 'my_tools/vehicle_view.html',{'vehicle':vehicle,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_vehicle(request,id):
    vehicle=VehicleModel.objects.get(id=id)
    vehicle.delete()
    return redirect('/./fleet/vehicle/')
@login_required(login_url='/./authentication/admin-login')
def vehicle(request):
    reminders=reminder(request)
    vehicles=VehicleModel.objects.all()
    return render(request, 'my_tools/vehicle.html',{'vehicles':vehicles,'reminders':reminders})
# end of My Tools

# authorization folder

@login_required(login_url='/./authentication/admin-login')
def authorization(request):
    reminders=reminder(request)
    profile=Profile.objects.get(user_id=request.user.id)
    print(profile.profile_picture)
    return render(request, 'authorization/myAccount.html',{'profile':profile,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def auth_setting(request):
    reminders=reminder(request)
    pass
class EditProfilePageView(generic.UpdateView):
    model= Profile
    template_name='authorization/editProfile.html'
    success_url=reverse_lazy('/fleet/')
    fields=['company_name','company_logo','default_language','default_currency','profile_picture']
class ViewProfilePageView(DetailView):
    model= Profile
    template_name='authorization/viewProfile.html'
    success_url=reverse_lazy('/fleet/')
    fields=['company_name','company_logo','default_language','default_currency','profile_picture']
class CreateProfilePageView(generic.CreateView):
    model=Profile
    templte_name='authorization/createProfile.html'
    success_url=reverse_lazy('/fleet/')
    fields=['company_name','company_logo','default_language','default_currency','profile_picture']
    
    
# end of authorization



# Accounting Items folder
@login_required(login_url='/./authentication/admin-login')
def safe(request):
    data=actual(request)
    reminders=reminder(request)
    return render(request,'accounting/safe.html',{'data':data,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def income_report(request):
    reminders=reminder(request)
    return render(request,'accounting_book/collections.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def expense_report(request):
    reminders=reminder(request)
    return render(request,'accounting_book/expenses.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def collectionCreate(request):
    reminders=reminder(request)
    accounts=CurrentAccountModel.objects.all()
    items=AccountingItemModel.objects.all()
    currencies=CurrencyModel.objects.all()
    methods=PaymentMethodModel.objects.all()
    invoice=InvoiceModel.objects.all()
    categories=CategoryModel.objects.all()
    insert_collection(request)
    return render(request, 'accounting_book/collectionCreate.html',{'accounts':accounts,'items':items,'currencies':currencies,'methods':methods,'invoice':invoice,'categories':categories,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def collections(request):
    reminders=reminder(request)
    collections=IncomeModel.objects.all()
    return render(request, 'accounting_book/collections.html',{'collections':collections,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_collection(request,id):
    reminders=reminder(request)
    collection=IncomeModel.objects.get(id=id)
    return render(request, 'accounting_book/collection_edit.html',{'collection':collection,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_collection(request,id):
    reminders=reminder(request)
    collection=IncomeModel.objects.get(id=id)
    collection.delete()
    return redirect('/./fleet/',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_collection(request,id):
    reminders=reminder(request)
    collection=IncomeModel.objects.get(id=id)
    return render(request, 'accounting_book/collection_view.html',{'collection':collection,'reminders':reminders})

@login_required(login_url='/./authentication/admin-login') 
def expenseCreate(request):
    reminders=reminder(request)
    accounts=CurrentAccountModel.objects.all()
    items=AccountingItemModel.objects.all()
    currencies=CurrencyModel.objects.all()
    methods=PaymentMethodModel.objects.all()
    invoice=InvoiceModel.objects.all()
    categories=CategoryModel.objects.all()
    insert_expense(request)
    return render(request, 'accounting_book/expenseCreate.html',{'accounts':accounts,'items':items,'currencies':currencies,'methods':methods,'invoice':invoice,'categories':categories,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def expenses(request):
    reminders=reminder(request)
    expenses=ExpenseModel.objects.all()
    return render(request, 'accounting_book/expenses.html',{'expenses':expenses,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_expense(request,id):
    reminders=reminder(request)
    expense=ExpenseModel.objects.get(id=id)
    return render(request, 'accounting_book/expense_edit.html',{'expense':expense,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_expense(request,id):
    reminders=reminder(request)
    expense=ExpenseModel.objects.get(id=id)
    expense.delete()
    return redirect('/./fleet/',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_expense(request,id):
    reminders=reminder(request)
    expense=ExpenseModel.objects.get(id=id)
    return render(request, 'accounting_book/expense_view.html',{'expense':expense,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehicleExpenseCreate(request):
    reminders=reminder(request)
    accounts=CurrentAccountModel.objects.all()
    vehicles=VehicleModel.objects.all()
    currencies=CurrencyModel.objects.all()
    methods=PaymentMethodModel.objects.all()
    invoice=InvoiceModel.objects.all()
    categories=CategoryModel.objects.all()
    return render(request, 'accounting_book/vehicleExpenseCreate.html',{'accounts':accounts,'vehicles':vehicles,'currencies':currencies,'methods':methods,'invoice':invoice,'categories':categories,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehicle_expenses(request):
    reminders=reminder(request)
    vehicle_expenses=VehicleExpenseModel.objects.all()
    return render(request, 'accounting_book/vehicleExpenses.html',{'vehicle_expenses':vehicle_expenses,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_vehicle_expense(request,id):
    reminders=reminder(request)
    vehicle_expense=VehicleExpenseModel.objects.get(id=id)
    return render(request,'accounting_book/vehicleExpense_edit.html',{'vehicle_expense':vehicle_expense,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_vehicle_expense(request,id):
    vehicle_expense=VehicleExpenseModel.objects.get(id=id)
    vehicle_expense.delete()
    return redirect()
@login_required(login_url='/./authentication/admin-login')
def view_vehicle_expense(request,id):
    reminders=reminder(request)
    vehicle_expense=VehicleExpenseModel.objects.get(id=id)
    return render(request,'accounting_book/vehicleExpense_view.html',{'vehicle_expense':vehicle_expense,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def salesCreate(request):
    reminders=reminder(request)
    invoice_number=str(randint(10**5,10**6))
    accounts=CurrentAccountModel.objects.all()
    items=AccountingItemModel.objects.all()
    insert_invoice(request)
    return render(request, 'accounting_book/invoiceCreate.html',{'accounts': accounts,'items':items,'invoice_number':invoice_number,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def invoices(request,id):
    reminders=reminder(request)
    invoices=InvoiceModel.objects.all()
    return render(request,'accounting_book/invoices.html',{'invoices':invoices,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_invoice(request,id):
    reminders=reminder(request)
    invoice=InvoiceModel.objects.get(id=id)
    return render(request,'accounting_book/invoice_edit.html',{'invoice':invoice,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_invoice(request,id):
     invoice=InvoiceModel.objects.get(id=id)
     invoice.delete()
@login_required(login_url='/./authentication/admin-login')
def view_invoice(request,id):
    reminders=reminder(request)
    invoice=InvoiceModel.objects.get(id=id)
    return render(request,'accounting_book/invoice_view.html',{'invoice':invoice,'reminders':reminders})

# end of Accounting Items 

# Accounting Items folder

# end of Accounting Items 

# Current Accounts folder
@login_required(login_url='/./authentication/admin-login')
def accountCreate(request):
    reminders=reminder(request)
    customers=CustomerModel.objects.all()
    account_types=AccountTypeModel.objects.all()
    currencies=CurrencyModel.objects.all()
    insert_current_account(request)
    return render(request, 'current_accounts/accountsCreate.html',{'account_types':account_types,'currencies':currencies,'customers':customers,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def current_accounts(request):
    reminders=reminder(request)
    accounts=CurrentAccountModel.objects.all()
    return render(request,'current_accounts/current_accounts.html',{'accounts':accounts,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def current_account_status(request):
    reminders=reminder(request)
    return render(request,'current_accounts/accounts_status.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def current_account_statement(request):
    reminders=reminder(request)
    return render(request,'current_accounts/accounts_statement.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def account_history(request,id):
    reminders=reminder(request)
    return render(request,'accounting/account_history.html',{'reminders':reminders,'id':id})
@login_required(login_url='/./authentication/admin-login')
def delete_account(request,id):
    account=CurrentAccountModel.objects.get(id=id)
    account.delete()
    return redirect('/./fleet/current_accounts/current_accounts.html')
@login_required(login_url='/./authentication/admin-login')
def view_account(request,id):
    reminders=reminder(request)
    account=CurrentAccountModel.objects.get(id=id)
    return render(request,'current_accounts/account_view.html',{'account':account,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_account(request,id):   
    reminders=reminder(request)
    account=CurrentAccountModel.objects.get(id=id)
    return render(request,'current_accounts/account_edit.html',{'account':account,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def mergeAccount(request):
    accounts=CurrentAccountModel.objects.all()
    reminders=reminder(request)
    if request.method=='POST' and request.POST.get('submit')=='Submit':
        main_account=CurrentAccountModel.objects.get(account_name=request.POST.get('mainAccount'))
        merged_account=CurrentAccountModel.objects.get(account_name=request.POST.get('accountToMerge'))
        if main_account.account_currency_id==merged_account.account_currency_id:
            main_account.debt=main_account.debt+merged_account.debt
            main_account.balance=main_account.balance+merged_account.balance
            main_account.save()
            merged_account.delete()
    return render(request, 'current_accounts/mergeAccount.html',{'accounts':accounts,'reminders':reminders})
# end of Accounting Items 
@login_required(login_url='/./authentication/admin-login')
def itemCreate(request):
    reminders=reminder(request)
    categories=CategoryModel.objects.all()
    insert_item(request)
    return render(request, 'accounting_items/itemCreate.html',{'categories':categories,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def items(request):
    reminders=reminder(request)
    items=AccountingItemModel.objects.all()
    return render(request,'accounting_items/items.html',{'items':items,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def delete_item(request,id):
    reminders=reminder(request)
    item=AccountingItemModel.objects.get(id=id)
    item.delete()
    return redirect('/./fleet/accounting_items/items.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def view_item(request,id):
    reminders=reminder(request)
    item=AccountingItemModel.objects.get(id=id)
    return render(request,'accounting_items/item_view.html',{'item':item,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def edit_item(request,id):
    reminders=reminder(request)
    item=AccountingItemModel.objects.get(id=id)
    return render(request,'accounting_items/item_edit.html',{'item':item,'reminders':reminders})
# end of Vehicle Management

# Reminders folder
@login_required(login_url='/./authentication/admin-login')
def addvehiclePaymentReminder(request):
    reminders=reminder(request)
    vehicles=VehicleModel.objects.all()
    currencies=CurrencyModel.objects.all()
    insert_reminder(request)
    return render(request, 'reminders/addVehiclePayment.html',{'vehicles':vehicles,'currencies':currencies,'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def bulkvehiclePaymentReminder(request):
    reminders=reminder(request)
    return render(request, 'reminders/bulkVehiclePayment.html',{'reminders':reminders})
@login_required(login_url='/./authentication/admin-login')
def vehiclePaymentReminder(request):
    reminders=reminder(request)
    return render(request, 'reminders/vehiclePayment.html',{'reminders':reminders})
# end of Reminders


# insert data into the customer table


def insert_customer(request):

    if request.method == 'POST':
        if request.POST.get('firstName') and request.POST.get('passportNo') and request.POST.get('licenseNo'):
            customer = CustomerModel()
            customer.type_id=CustomerTypeModel.objects.get(type=request.POST.get('customerType')).id
            customer.black_list=CustomerBlackListModel.objects.get(type=request.POST.get('customerBlackList')).id
            if_student = StudentModel()
            if customer.student == 1:
                if_student.student_number = request.POST.get('studentNumber')
                if_student.school = request.POST.get('school')
                if_student.department = request.POST.get('department')
                if_student.section = request.POST.get('section')
                if_student.save()
                customer.student_id = if_student.objects.get(student_number=request.POST.get('')).id
            customer.customer_title = request.POST.get('customerTitle')
            customer.first_name = request.POST.get('firstName')
            customer.last_name = request.POST.get('surname')
            customer.father_name = request.POST.get('fatherName')
            customer.mother_name = request.POST.get('motherName')
            customer.date_of_birth = request.POST.get('birthDate')
            customer.place_of_birth = request.POST.get('birthPlace')
            customer.country = request.POST.get('country')
            customer.phone_number = request.POST.get('mobilePhone1')
            customer.cell_phone_1 = request.POST.get('homePhone1')
            customer.cell_phone_2 == request.POST.get('homePhone2')
            customer.home_phone = request.POST.get('mobilePhone2')
            customer.job = request.POST.get('job')
            customer.business_phone = request.POST.get('businessPhone')
            customer.office_phone = request.POST.get('OfficePhone')
            customer.business_address = request.POST.get('businessAddress')
            customer.home_address = request.POST.get('homeAddress')
            customer.local_address = request.POST.get('localAddress')
            customer.nationality = request.POST.get('nationality')
            customer.email = request.POST.get('email')
            customer.email_2 = request.POST.get('email2')
            customer.passport_no = request.POST.get('passportNo')
            customer.blood_group = request.POST.get('bloodGroup')
            customer.license_number = request.POST.get('licenseNo')
            customer.license_issue_date = request.POST.get('licenseDate')
            customer.license_issue_place = request.POST.get('licensePlace')
            customer.system_note = request.POST.get('systemNote')
            customer.save()

def insert_reservation(request):
    if request.method == 'POST':
        reservation=ReservationModel()
        reservation.customer_id=CustomerModel.objects.get(first_name=request.POST.get('customer').split()[0],last_name=request.POST.get('customer').split()[1]).id
        reservation.reservation_status_id=ReservationStatusModel.objects.get(status=request.POST.get('reservationStatus')).id
        reservation.vehicle_id=VehicleModelModel.objects.get(vehicle_model=request.POST.get('vehicleModel')).id
        reservation.purchase_date=request.POST.get('purchaseDate')
        reservation.pick_up_place=request.POST.get('pickupPlace')
        reservation.flight_number=request.POST.get('FlightNumber')
        reservation.total_fee=request.POST.get('totalFee')
        reservation.currency_id=CurrencyModel.objects.get(currency_code=request.POST.get('Currency')).id
        reservation.vehicle_full_address=request.POST.get('pickupAddress') 
        reservation.vehicle_delivery_address=request.POST.get('deliveryAddress')
        reservation.vehicle_delivery_date=request.POST.get('deliveryDate')
        reservation.vehicle_delivery_time=request.POST.get('deliveryTime')
        reservation.vehicle_return_place=request.POST.get('deliveryPlace')
        reservation.return_flight_number=request.POST.get('returnFlightNumber')
        accounting_event=AccountingEventModel()
        accounting_event.event_type_id=AccountingEventTypeModel.objects.get(event_type='income').id
        accounting_event.fee_amount=reservation.total_fee
        accounting_event.currency_id=reservation.currency_id
        accounting_event.save()
        reservation.save()
        reservation_id=ReservationModel.objects.get(customer_id=reservation.customer_id,vehicle_id=reservation.vehicle_id,purchase_date=reservation.purchase_date,total_fee=reservation.total_fee,vehicle_delivery_date=reservation.vehicle_delivery_date).id
        #contract_payment(payment_id,reservation_id)
# insert vehicle model
def insert_vehicle_model(request):
    if request.method == 'POST':
        vehicle_model = VehicleModelModel()
        vehicle_model.vehicle_model=request.POST.get('vehicleModel')
        vehicle_model.number_of_doors=request.POST.get('doorsNumbers')
        vehicle_model.model_year=request.POST.get('modelYear')
        vehicle_model.fuel_type=request.POST.get('fuelType')
        vehicle_model.gear=request.POST.get('gear')
        v_comp=VehicleComponentModel.objects.all()
        mod_comp=""
        for v_c in v_comp:
            if request.POST.get(v_c.component_name)=="on":
                mod_comp=mod_comp+v_c.component_name+","
                
        vehicle_model.components=mod_comp
        vbrand=request.POST.get('vehicleBrand')
        vtype=request.POST.get('vehicleType')
        vprice_class=request.POST.get('classPrice')
        vehicle_model.vehicle_type_id=VehicleTypeModel.objects.get(type_name=vtype).id
        vehicle_model.number_of_passengers=request.POST.get('maxNoPeople')
        vehicle_model.large_suitcase=request.POST.get('largeSuitcase')
        vehicle_model.small_suitcase=request.POST.get('smallSuitcase')
        vehicle_model.vehicle_capacity_id=1
        vehicle_model.vehicle_price_class_id=1
        vehicle_model.vehicle_pclass_id=VehiclePriceClassModel.objects.get(price_class=vprice_class).id
        vehicle_model.vehicle_brand_id=VehicleBrandModel.objects.get(brand_name=vbrand).id
        vehicle_model.save()
# insert vehicle type


def insert_current_account(request):
    if request.method == 'POST':
        account=CurrentAccountModel()
        account.customer_id=CustomerModel.objects.get(first_name=request.POST.get('accountHolder').split()[0],last_name=request.POST.get('accountHolder').split()[1]).id
        account.account_type_id=AccountTypeModel.objects.get(account_type_name=request.POST.get('accountType')).id
        account.account_currency_id=CurrencyModel.objects.get(currency_code=request.POST.get('accountCurrency')).id
        account.account_name=request.POST.get('accountName')
        account.explanation=request.POST.get('explanation')
        account.save()
def insert_invoice(request):
    if request.method == 'POST':
        invoice=InvoiceModel()
        invoice.accounting_item_id=AccountingItemModel.objects.get(item_name=request.POST.get('incomeItem')).id
        invoice.current_account_id=CurrentAccountModel.objects.get(account_name=request.POST.get('debitedAccount')).id
        invoice.collection_date=request.POST.get('collectionDate')
        invoice.currency_id=1
        invoice.invoice_number=request.POST.get('invoiceNumber')
        invoice.fee_amount=request.POST.get('amount')
        invoice.explanation=request.POST.get('mtvExplanation')
        invoice.save()
def insert_collection(request):
    if request.method == 'POST':
        collection=IncomeModel()
        collection.paying_account_id=CurrentAccountModel.objects.get(account_name=request.POST.get('payingAccount')).id        
        collection.accounting_item_id=AccountingItemModel.objects.get(item_name=request.POST.get('collectionItem')).id
        collection.payment_method_id=PaymentMethodModel.objects.get(method=request.POST.get('paymentMethod')).id
        collection.fee_amount=request.POST.get('fee_amount')
        collection.exchange_rate=request.POST.get('exchangeRate')
        collection.collection_category=request.POST.get('collectionCategory')
        collection.explanation=request.POST.get('mtvExplanation')
        account=CurrentAccountModel.objects.get(id=collection.paying_account_id)
        account.balance=float(account.balance)+float(collection.fee_amount)
        account.save()
        collection.currency_id=CurrencyModel.objects.get(currency_code=request.POST.get('Currency')).id
        payment_exchange_rate=float(CurrencyModel.objects.get(currency_code=collection.currency_id).exchange_rate)
        paid_fee=float(request.POST.get('fee_amount'))
        payment_fee=(paid_fee*payment_exchange_rate)/payment_exchange_rate
        payment_id=payment_insert(request.POST.get('paymentType'),'pending',payment_fee,'income')
        ac=0
        note=''
        if request.POST.get('paymentType')=='Mail order':
            ac,note=MailOrderPayment_insert(payment_id,request.POST.get('mailAccount'),request.POST.get('cardNumber'),request.POST.get('cardHolder'),request.POST.get('cvc'),request.POST.get('cardExYear'),request.POST.get('cardExMonth'))
        if request.POST.get('paymentType')=='Check':
            ac,note=CheckPayment_insert(payment_id,request.POST.get('checkingNumber'),request.POST.get('checkingAccount'),request.POST.get('checkHolder'),request.POST.get('checkCash'),request.POST.get('checkReceipt'))
        if request.POST.get('paymentType')=='Transfer':
            ac,note=TransferPayment_insert(payment_id,request.POST.get('transferredBankAcc'))
        if request.POST.get('paymentType')=='Credit card':
            ac,note=CreditCardPayment_insert(payment_id,request.POST.get('posAcc'),request.POST.get('bankFee'),request.POST.get('cardHolder'))
        if request.POST.get('paymentType')=='found':
            ac,note=FoundPayment_insert(payment_id,request.POST.get('cashAccount'))
        if request.POST.get('paymentType')=='look for':
            ac,note=DefaultPayment_insert(payment_id,request.POST.get('debitedAcc'))
        collection.save()
        category=collection.collection_category
        payment_date=collection.payment_date
        notes=str(collection.fee_amount)+str(CurrencyModel.objects.get(collection.currency_id).currency_code)+ ' paid by '+str(CurrentAccountModel.objects.get(account_name=request.POST.get('providerAccount')).account_name)+' for '+str(collection.collection_category)
        fee_amount=collection.fee_amount
        account_statement(account.id,category,payment_date,notes,fee_amount)
        notes=note
        acc_event=AccountingEventTypeModel.objects.get(event_type="income").id
        acc_history(ac,paid_fee,collection.currency_id,notes,acc_event)
def insert_expense(request):
    if request.method == 'POST':
        expense=ExpenseModel()
        expense.provider_account_id=CurrentAccountModel.objects.get(account_name=request.POST.get('providerAccount')).id       
        account=CurrentAccountModel.objects.get(account_name=request.POST.get('providerAccount')) 
        expense.accounting_item_id=AccountingItemModel.objects.get(item_name=request.POST.get('expenseItem')).id
        expense.invoice_id=InvoiceModel.objects.get(invoice_number=request.POST.get('expenseInvoice')).id
        expense.payment_method_id=PaymentMethodModel.objects.get(method=request.POST.get('paymentMethod')).id
        expense.currency_id=CurrencyModel.objects.get(currency=request.POST.get('currency')).id
        expense.exchange_rate=request.POST.get('exchangeRate')
        expense.expense_category=request.POST.get('expenseCategory')
        expense.fee_amount=request.POST.get('fee_amount')
        expense.explanation=request.POST.get('mtvExplanation')
        expense.save()
        payment_exchange_rate=float(CurrencyModel.objects.get(currency_code=expense.currency_id).exchange_rate)
        paid_fee=float(request.POST.get('fee_amount'))
        payment_fee=(paid_fee*payment_exchange_rate)/payment_exchange_rate
        payment_id=payment_insert(request.POST.get('paymentType'),'pending',payment_fee,'income')
        ac=0
        note=''
        if request.POST.get('paymentType')=='Mail order':
            ac,note=MailOrderPayment_insert(payment_id,request.POST.get('mailAccount'),request.POST.get('cardNumber'),request.POST.get('cardHolder'),request.POST.get('cvc'),request.POST.get('cardExYear'),request.POST.get('cardExMonth'))
        if request.POST.get('paymentType')=='Check':
            ac,note=CheckPayment_insert(payment_id,request.POST.get('checkingNumber'),request.POST.get('checkingAccount'),request.POST.get('checkHolder'),request.POST.get('checkCash'),request.POST.get('checkReceipt'))
        if request.POST.get('paymentType')=='Transfer':
            ac,note=TransferPayment_insert(payment_id,request.POST.get('transferredBankAcc'))
        if request.POST.get('paymentType')=='Credit card':
            ac,note=CreditCardPayment_insert(payment_id,request.POST.get('posAcc'),request.POST.get('bankFee'),request.POST.get('cardHolder'))
        if request.POST.get('paymentType')=='found':
            ac,note=FoundPayment_insert(payment_id,str(request.POST.get('cashAccount')))
        if request.POST.get('paymentType')=='look for':
            ac,note=DefaultPayment_insert(payment_id,request.POST.get('debitedAcc'))
        expense.save()
        category=expense.expense_category
        payment_date=expense.payment_date
        notes=str(expense.fee_amount)+str(CurrencyModel.objects.get(expense.currency_id).currency_code)+ ' paid to '+str(CurrentAccountModel.objects.get(account_name=request.POST.get('providerAccount')).account_name)+' for '+str(expense.expense_category)
        fee_amount=0
        account_statement(account.id,category,payment_date,notes,fee_amount)
        notes=note
        acc_event=AccountingEventTypeModel.objects.get(event_type="expense").id
        acc_history(ac,paid_fee,expense.currency_id,notes,acc_event)
def insert_vehicle_expense(request):
    if request.method=='POST':
        vehicle_expense=VehicleExpenseModel()
        vehicle_expense.service_company_id=CurrentAccountModel.objects.get(account_name=request.POST.get('providerAccount')).id        
        vehicle_expense.vehicle_id=VehicleModel.objects.get(vehicle_plate_number=request.POST.get('vehicle')).id
        vehicle_expense.invoice_id=InvoiceModel.objects.get(invoice_number=request.POST.get('expenseInvoice')).id
        vehicle_expense.payment_method_id=PaymentMethodModel.objects.get(method=request.POST.get('paymentMethod')).id
        vehicle_expense.currency_id=CurrencyModel.objects.get(currency=request.POST.get('currency')).id
        vehicle_expense.exchange_rate=request.POST.get('exchangeRate')
        vehicle_expense.expense_category=request.POST.get('expenseCategory')
        vehicle_expense.fee_amount=request.POST.get('fee_amount')
        vehicle_expense.explanation=request.POST.get('mtvExplanation')
        vehicle_expense.save()
def insert_item(request):
    if request.method=='POST':
        item=AccountingItemModel()
        item.item_name=request.POST.get('itemName')
        item.category=request.POST.get('topCategory')
        item.save()
def insert_reminder(request):
    if request.method=='POST':
        reminder=VehiclePaymentReminderModel()
        reminder.payment_date=request.POST.get('paymentDate')
        reminder.fee_amount=request.POST.get('paymentAmount')
        reminder.currency_id=CurrencyModel.objects.get(currency_code=request.POST.get('currency')).id
        reminder.explanation=request.POST.get('explanation')
        reminder.vehicle_id=VehicleModel.objects.get(vehicle_plate_number=request.POST.get('vehicle')).id
        reminder.save()
@login_required(login_url='/./authentication/admin-login')
def vehicle_brand_json(request):
    data=VehicleBrandModel.objects.all().values()
    new_data=list(data)
    JsonResponse(new_data, safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_type_json(request):
    data=VehicleTypeModel.objects.all().values()
    new_data=list(data)
    JsonResponse(new_data, safe=False)
    for dt in new_data:
        dt['transactions']='<a href="/fleet/edit-vehicle-type/'+str(dt['id'])+'/"'+' class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-vehicle-type/'+str(dt['id'])+'/"'+' class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-vehicle-type/'+str(dt['id'])+'/"'+' class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
@login_required(login_url='/./authentication/admin-login')
def vehicle_model_json(request):
    data=VehicleModelModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['transactions']='<a href="/fleet/edit-vehicle-model/'+str(dt['id'])+'/"'+' class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-vehicle-model/'+str(dt['id'])+'/"'+' class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-vehicle-model/'+str(dt['id'])+'/"'+' class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    JsonResponse(new_data, safe=False)
@login_required(login_url='/./authentication/admin-login')
def current_account_json(request):
    data=CurrentAccountModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=dt['customer_id']).first_name+" "+CustomerModel.objects.get(id=dt['customer_id']).last_name)
        dt['currency']=CurrencyModel.objects.get(id=dt['account_currency_id']).currency_code
        dt['account_type']=AccountTypeModel.objects.get(id=dt['account_type_id']).account_type_name
        dt['notes']=dt['explanation']
        dt['transactions']='<a href="/fleet/contract-edit/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/contract-delete/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/contract-view/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    return JsonResponse(new_data, safe=False)
@login_required(login_url='/./authentication/admin-login')
def account_statement_json(request):
    data=AccountStatementModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['account_name']=CurrentAccountModel.objects.get(id=dt['account_id']).account_name
    return JsonResponse(new_data,safe=False)

@login_required(login_url='/./authentication/admin-login')
def contract_json(request):
    data=ContractModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=dt['customer_id']).first_name+CustomerModel.objects.get(id=dt['customer_id']).last_name)
        dt['vehicle_name']=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_plate_number
        dt['phone_number']=CustomerModel.objects.get(id=dt['customer_id']).phone_number
        status=str(ContractStatusModel.objects.get(id=dt['contract_status_id']).contract_status)
        if status=='ON-GOING':
            dt['contract_status']='<span class="btn btn-outline-primary">On-going</span>'
        else:
            dt['contract_status']='<span class="btn btn-outline-danger">Terminated</span>' 
        if dt['payment_completion']==0:
            dt['payment']='<span class="btn btn-outline-warning">'+'pending'+'</span>'
        else:
            dt['payment']='<span class="btn btn-outline-success">'+'completed'+'</span>'
        dt['transactions']='<a href="/fleet/contract-edit/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/contract-delete/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/contract-view/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'+'<a href="/fleet/contract-pdf/'+str(dt['id'])+'"'+'class="col btn btn-outline-dark btn-xs"><i class="fa-solid fa-file-invoice"></i></a>'
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def customer_json(request):
    data=CustomerModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['type']=CustomerTypeModel.objects.get(id=dt['type_id']).type
        dt['transactions']='<a href="/fleet/edit-customer/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-customer/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-customer/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def reservation_json(request):
    data=ReservationModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=dt['customer_id']).first_name+" "+CustomerModel.objects.get(id=dt['customer_id']).last_name)
        dt['phone_number']=CustomerModel.objects.get(id=dt['customer_id']).phone_number
        dt['vehicle_model']=VehicleModelModel.objects.get(id=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_model_id).vehicle_model
        dt['vehicle_name']=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_plate_number
        dt['email']=CustomerModel.objects.get(id=dt['customer_id']).email
        dt['currency']=CurrencyModel.objects.get(id=dt['currency_id']).currency_code
    return JsonResponse(new_data,safe=False)

@login_required(login_url='/./authentication/admin-login')
def collection_json(request):
    data=IncomeModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['paying_account_id']).customer_id).first_name+" "+CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['paying_account_id']).customer_id).last_name)
        dt['currency']=CurrencyModel.objects.get(id=dt['currency_id']).currency_code
        dt['account_name']=CurrentAccountModel.objects.get(id=dt['paying_account_id']).account_name
        dt['invoice_number']='000000000'
        dt['payment_method']=PaymentMethodModel.objects.get(id=dt['payment_method_id']).method
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def expense_json(request):
    data=ExpenseModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['provider_account_id']).customer_id).first_name+" "+CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['provider_account_id']).customer_id).last_name)
        dt['currency']=CurrencyModel.objects.get(id=dt['currency_id']).currency_code
        dt['account_name']=CurrentAccountModel.objects.get(id=dt['provider_account_id']).account_name
        dt['invoice_number']='000000000'
        dt['payment_method']=PaymentMethodModel.objects.get(id=dt['payment_method_id']).method
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_expense_json(request):
    data=VehicleExpenseModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['customer_name']=str(CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['service_company_id']).customer_id).first_name+" "+CustomerModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['service_company_id']).customer_id).last_name)
        dt['currency']=CurrencyModel.objects.get(id=dt['currency_id']).currency_code
        dt['account_name']=CurrentAccountModel.objects.get(id=dt['service_company_id']).account_name
        dt['invoice_number']='000000000'
        dt['payment_method']=PaymentMethodModel.objects.get(id=dt['payment_method_id']).method
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_history_json(request):
    data=VehicleHistoryModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['vehicle']=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_plate_number
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_maintenance_json(request):
    data=VehicleMaintenanceModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['vehicle']=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_plate_number
        
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_json(request):
    data=VehicleModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['vehicle_model']=VehicleModelModel.objects.get(id=dt['vehicle_model_id']).vehicle_model
        dt['transactions']='<a href="/fleet/edit-vehicle/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-vehicle/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-vehicle/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def available_vehicle_json(request):
    data=VehicleModel.objects.filter(vehicle_status='available',vehicle_status_id=VehicleStatusModel.objects.get(status='available').id).values()
    new_data=list(data)
    for dt in new_data:
        dt['status']='<span class="btn btn-outline-warning">'+dt['vehicle_status']+'</span>'
        dt['vehicle_model']=VehicleModelModel.objects.get(id=dt['vehicle_model_id']).vehicle_model
        dt['transactions']='<a href="/fleet/edit-vehicle/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-vehicle/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-vehicle/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_brand_json(request):
    data=VehicleBrandModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['transactions']='<a href="/fleet/edit-vehicle-brand/'+str(dt['id'])+'/"'+'class="col btn btn-outline-primary btn-xs"><i class="fa-solid fa-pencil"></i></a>'+'<a href="/fleet/delete-vehicle-brand/'+str(dt['id'])+'"'+'class="col btn btn-outline-danger btn-xs"><i class="fa-solid fa-trash-can"></i></a>'+'<a href="/fleet/view-vehicle-brand/'+str(dt['id'])+'"'+'class="col btn btn-outline-success btn-xs"><i class="fa-solid fa-eye"></i></a>'
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_type_json(request):
    data=VehicleTypeModel.objects.all().values()
    new_data=list(data)
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def vehicle_model_json(request):
    data=VehicleModelModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['vehicle_type']=VehicleTypeModel.objects.get(id=dt['vehicle_type_id']).type_name
        dt['price_class']=VehiclePriceClassModel.objects.get(id=dt['vehicle_price_class_id']).price_class
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def item_json(request):
    data=AccountingItemModel.objects.all().values()
    new_data=list(data)
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def region_json(request):
    data=RegionModel.objects.all().values()
    new_data=list(data)
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def stop_json(request):
    data=StopModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['region']=RegionModel.objects.get(id=region_id).region_name
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def merge_account_json(request):
    #data=CurrentAccountModel.objects.all().values()
    new_list=[]
    for currency in CurrencyModel.objects.all():
        new_list.append(currency.currency_code)
        new_list.append(list(CurrentAccountModel.objects.filter(account_currency_id=currency.id).values()))
    return JsonResponse(new_list,safe=False)
@login_required(login_url='/./authentication/admin-login')
def account_history_json(request,id):
    account=CurrentAccountModel.objects.get(id=id)
    data=AccountHistoryModel.objects.filter(account_id=account.id).values()
    new_data=list(data)
    for dt in new_data:
        dt['account_name']=CurrentAccountModel.objects.get(id=dt['account_id']).account_name
        dt['currency']=CurrencyModel.objects.get(id=CurrentAccountModel.objects.get(id=dt['account_id']).account_currency_id).currency_code
        dt['transactions']=''
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def instant_availability_json(request):
    rented_vehicles=VehicleModel.objects.filter(vehicle_status_id=VehicleStatusModel.objects.get(status='rented').id)
    data=rented_vehicles.values()
    new_data=list(data)
    for dt in new_data:
        if dt['rent_end']>datetime.datetime.now() and dt['rent_end']<datetime.datetime.now()+timedelta(days=5):
            dt['vehicle']=VehicleModel.objects.get(id=dt['id']).vehicle_plate_number
            dt['customer']=CustomerModel.objects.get(id=ContractModel.objects.get(vehicle_id=dt['id'],contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).customer_id).first_name+' '+CustomerModel.objects.get(id=ContractModel.objects.get(vehicle_id=dt['id'],contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).customer_id).last_name
            dt['time_remaining']=str(ContractModel.objects.get(vehicle_id=dt['id'],contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).return_date_and_time-datetime.datetime.now())
            dt['issue_date']=str(ContractModel.objects.get(vehicle_id=dt['id'],contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).issue_date_and_time)
            dt['return_date']=str(ContractModel.objects.get(vehicle_id=dt['id'],contract_status_id=ContractStatusModel.objects.get(contract_status='ON-GOING').id).return_date_and_time)
    return JsonResponse(new_data,safe=False)
@login_required(login_url='/./authentication/admin-login')
def availability_json(request):
    pass
@login_required(login_url='/./authentication/admin-login')
def general_availability_json(request):
    pass
@login_required(login_url='/./authentification/admin-login')
def reminder_json(request):
    data=VehiclePaymentReminderModel.objects.all().values()
    new_data=list(data)
    for dt in new_data:
        dt['currency']=CurrencyModel.objects.get(id=dt['currency_id']).currency_code
        dt['vehicle']=VehicleModel.objects.get(id=dt['vehicle_id']).vehicle_plate_number
    return JsonResponse(new_data,safe=False)