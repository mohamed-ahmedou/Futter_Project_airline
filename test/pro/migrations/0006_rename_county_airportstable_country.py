# Generated by Django 4.1.7 on 2023-02-21 13:51

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('pro', '0005_rename_city_airportstable_countrjqsklfy_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='airportstable',
            old_name='County',
            new_name='Country',
        ),
    ]
