# Generated by Django 3.1.7 on 2022-03-17 10:43

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('med', '0011_order'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='mcate',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='med.maincategories'),
        ),
    ]
