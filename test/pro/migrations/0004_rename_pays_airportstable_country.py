# Generated by Django 4.1.7 on 2023-02-21 13:49

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pro', '0003_rename_country_airportstable_pays'),
    ]

    operations = [
        migrations.RenameField(
            model_name='airportstable',
            old_name='Pays',
            new_name='Country',
        ),
    ]
