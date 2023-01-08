def handle_uploaded_file(id,location,f):  
    file_name=f.name
    extension=file_name.split('.')[1]
    with open('assets/img/uploaded/'+location+'/'+str(id)+'.'+extension, 'wb+') as destination_1:  
        for chunk in f.chunks():  
            destination_1.write(chunk)
    with open('uploads/'+location+'/'+f.name, 'wb+') as destination_2:  
        for chunk in f.chunks():  
            destination_2.write(chunk)
 