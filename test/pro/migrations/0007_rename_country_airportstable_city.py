# Generated by Django 4.1.7 on 2023-02-21 13:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pro', '0006_rename_county_airportstable_country'),
    ]

    operations = [
        migrations.RenameField(
            model_name='airportstable',
            old_name='Country',
            new_name='City',
        ),
    ]
