# Generated by Django 4.1.5 on 2023-01-26 09:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('fleet', '0004_userprofilemodel_delete_usermodel_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='profile',
            old_name='image',
            new_name='profile_picture',
        ),
    ]
