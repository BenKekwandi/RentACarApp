from django.shortcuts import render, redirect
from django.http import HttpResponse,Http404
from django.contrib import messages
from django.template import Context,Template
from fleet.models import ContractModel
from fleet.models import CustomerModel
from fleet.models import VehicleModel
from fleet.models import CurrencyModel
from fleet.models import IncomeModel
from fleet.models import AccountingEventModel
from fleet.models import AccountingEventTypeModel
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.template import RequestContext
from fpdf import FPDF
import reportlab  
import datetime
from reportlab.pdfgen import canvas
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont

pdfmetrics.registerFont(TTFont('Verdana', 'Verdana.ttf'))
pdfmetrics.registerFont(TTFont('Tahoma', 'Tahoma.ttf'))
pdfmetrics.registerFont(TTFont('Vera', 'Vera.ttf'))
pdfmetrics.registerFont(TTFont('VeraBd', 'VeraBd.ttf'))
pdfmetrics.registerFont(TTFont('VeraIt', 'VeraIt.ttf'))
pdfmetrics.registerFont(TTFont('VeraBI', 'VeraBI.ttf'))

def contract_pdf(request,id):
    contract=ContractModel.objects.get(id=id)
    customer_name=str(CustomerModel.objects.get(id=contract.customer_id).first_name)+' '+str(CustomerModel.objects.get(id=contract.customer_id).last_name)
    vehicle_name=VehicleModel.objects.get(id=contract.vehicle_id).vehicle_plate_number
    response = HttpResponse(content_type='application/pdf') 
    response['Content-Disposition'] = 'attachment; filename="Contract.pdf"' 
    image='static/'+str(request.user.profile.profile_picture.url)
    get_param = request.GET.get('name', 'World')
    p = canvas.Canvas(response) 
    p.setFont("VeraBd",28)
    p.drawInlineImage(image,30,790,50,50)
    p.drawString(170,800, "ATOLL RENTACAR")  
    p.setFont("VeraBd",20)
    p.drawString(220,750, "ARAÇ SÖZLEME FIŞI")
    p.setFont("Verdana",12) 
    p.drawString(100,680, "Müşteri: "+customer_name)
    p.drawString(100,660, "Araç: "+vehicle_name)
    p.drawString(100,640, "Veriliş tarihi: "+str(contract.issue_date_and_time))
    p.drawString(100,620, "Dönüş tarihi: "+str(contract.return_date_and_time))
    p.drawString(100,600, "Toplam ücret: "+str(contract.payment_total_fee)+' '+str(CurrencyModel.objects.get(id=contract.payment_currency).currency_code))
    if contract.payment_completion==0:
        p.drawString(100,580, "ödeme durumu: askıda olması")
    else:
        p.drawString(100,580, "ödeme durumu: ödenmiş")
    p.drawString(100,560, "Zaten ödenmiş olan miktar: "+str(contract.amount_paid)+' '+str(CurrencyModel.objects.get(id=contract.payment_currency).currency_code))
    p.drawString(100,100,"Imza:.............................................................................")
    p.drawString(100,80,'Bugünün tarihi: '+str(datetime.datetime.now()))
    p.showPage() 
    p.save()    
    return response
def invoice_pdf(request,id):
    pass
