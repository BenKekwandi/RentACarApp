from django.urls import path
from . import views


# URlConf
urlpatterns = [
    #path('user-create/',views.user_create),
    #Dashboard path
    path('test/',views.test),
    #path('translation/',views.translation),
    path('',views.dashboard),
    # Customer path
    path('customer-create/', views.customerCreate),
    path('my-customer/', views.my_customers),
    path('edit-customer/<int:id>/',views.edit_customer),
    path('delete-customer/<int:id>/',views.delete_customer),
    path('view-customer/<int:id>/',views.view_customer),
    # end

    # rent A car path
    #contract
    path('contract-create/', views.contractCreate),
    path('contracts/', views.contracts),
    path('contract-in-debt/',views.contract_in_debt),
    path('contract-view/<int:id>/', views.view_contract),
    path('contract-edit/<int:id>/', views.edit_contract),
    path('contract-delete/<int:id>/', views.delete_contract),
    #reservation
    path('reservation-create/', views.reservationCreate),
    path('reservations/', views.reservations),
    path('reservation-view/<int:id>', views.view_reservation),
    path('reservation-edit/<int:id>', views.edit_reservation),
    path('reservation-delete/<int:id>', views.delete_reservation),
    #availability
    path('instant-availability/',views.instant_availability),
    path('general-availability/',views.general_availability),
    # end

    # authorization path
    path('my-account/', views.authorization),
    path('account-settings/', views.auth_setting),
    # end
    
    # Current Accounts path
    path('account-create/', views.accountCreate),
    path('current-accounts/',views.current_accounts),
    path('current-account-status/',views.current_account_status),
    path('current-account-statement/',views.current_account_statement),
    path('merge-account/', views.mergeAccount),
    path('edit-account/<int:id>',views.edit_account),
    path('delete-account/<int:id>',views.delete_account),
    path('view-account/<int:id>',views.view_account),
    # end

    # Accounting Items path
    path('item-create/', views.itemCreate),
    path('items/',views.items),
    path('edit-item/<int:id>',views.edit_item),
    path('delete-item/<int:id>',views.delete_item),
    path('view-item/<int:id>',views.view_item),
    # end

    # Accounting paths
    
    path('safe/',views.safe),
    path('income-report/', views.income_report),
    path('expense-report/', views.expense_report),
    
    path('collection-create/', views.collectionCreate),
    path('collections/', views.collections),
    path('edit-collection/<int:id>',views.edit_collection),
    path('delete-collection/<int:id>',views.delete_collection),
    path('view-collection/<int:id>',views.view_collection),
    
    
    path('expense-create/', views.expenseCreate),
    path('expenses/', views.expenses),
    path('edit-expense/<int:id>',views.edit_expense),
    path('delete-expense/<int:id>',views.delete_expense),
    path('view-expense/<int:id>',views.view_expense),
    
    
    path('sales-create/', views.salesCreate),
    path('invoices/', views.invoices),
    path('account-history/<int:id>', views.account_history),
    path('edit-invoice/<int:id>',views.edit_invoice),
    path('delete-invoice/<int:id>',views.delete_invoice),
    path('view-invoice/<int:id>',views.view_invoice),
    
    path('vehicle-expense-create/', views.vehicleExpenseCreate),
    path('vehicle-expenses/',views.vehicle_expenses),
    path('edit-vehicle-expense/<int:id>',views.edit_vehicle_expense),
    path('delete-vehicle-expense/<int:id>',views.delete_vehicle_expense,),
    path('view-vehicle-expense/<int:id>',views.view_vehicle_expense),
    
    # end

    # reminders path
    path('add-vehicle-payment/', views.addvehiclePaymentReminder),
    path('vehicle-payment/', views.vehiclePaymentReminder),
    path('bulk-vehicle-payment/', views.bulkvehiclePaymentReminder),
    # end

    # Vehicle Management path
    path('vehicle-maintenance-record/',views.vehicle_maintenance_record),
    path('vehicle-history/',views.vehicle_history),
    path('vehicle-maintenance/', views.vehicle_maintenance),
    # end

    # Route Management path
    path('stop-create/', views.stopCreate),
    path('region-create/', views.regionCreate),
    path('stops/',views.stop),
    path('regions/',views.region),
    # end

    # Vehicle Brand path 
    path('vehicle-Brand/', views.vehicleBrand),
    path('vehicleBrand-create/', views.vehicleBrandCreate),
    path('edit-vehicle-brand/<int:id>',views.edit_vehicle_brand),
    path('delete-vehicle-brand/<int:id>',views.delete_vehicle_brand),
    path('view-vehicle-brand/<int:id>',views.view_vehicle_brand),
    # end

    # Vehicle Type path
    path('vehicle-type/', views.vehicleType),
    path('vehicleType-create/', views.vehicleTypeCreate),
    path('edit-vehicle-type/<int:id>',views.edit_vehicle_type),
    path('delete-vehicle-type/<int:id>',views.delete_vehicle_type),
    path('view-vehicle-type/<int:id>',views.view_vehicle_type),
    # end

    # Vehicle Model path
    path('vehicle-model/', views.vehicleModel),
    path('vehicleModel-create/', views.vehicleModelCreate),
    path('edit-vehicle-model/<int:id>',views.edit_vehicle_model),
    path('delete-vehicle-model/<int:id>',views.delete_vehicle_model),
    path('view-vehicle-model/<int:id>',views.view_vehicle_model),
    # end

    # My Tools path
    path('vehicle/', views.vehicle),
    path('vehicle-create/', views.vehicleCreate),
    path('edit-vehicle/<int:id>',views.edit_vehicle),
    path('delete-vehicle/<int:id>',views.delete_vehicle),
    path('view-vehicle/<int:id>',views.view_vehicle),
    # end

    # layout path
    path('layout/', views.layoutpage),
    
    # json paths
    path('contract-json/',views.contract_json),
    path('customer-json/',views.customer_json),
    path('reservation-json/',views.reservation_json),
    path('vehicle-json/',views.vehicle_json), 
    path('vehicle-brand-json/',views.vehicle_brand_json),
    path('vehicle-type-json/',views.vehicle_type_json),
    path('vehicle-model-json/',views.vehicle_model_json),
    path('instant-availability-json/',views.instant_availability_json),
    path('available-vehicle-json/',views.available_vehicle_json),
    path('general-availability-json/',views.general_availability_json),
    path('current-account-json/',views.current_account_json),
    path('account-statement-json/',views.account_statement_json),
    path('account-history-json/<int:id>',views.account_history_json),
    path('merge-account-json/',views.merge_account_json),
    path('collection-json/',views.collection_json),
    path('expense-json/',views.expense_json),
    path('vehicle-expense-json/',views.vehicle_expense_json),
    path('vehicle-history-json/',views.vehicle_history_json),
    path('vehicle-maintenance-json/',views.vehicle_maintenance_json),
    path('vehicle-json',views.vehicle_json),
    path('vehicle-brand-json',views.vehicle_brand_json),
    path('vehicle-type-json',views.vehicle_type_json),
    path('vehicle-model-json',views.vehicle_model_json),
    path('item-json/',views.item_json),
    path('region-json/',views.region_json),
    path('stop-json/',views.stop_json),
    path('reminder-json/',views.reminder_json)
    
]
