# Generated by Django 3.1.4 on 2020-12-15 12:30

import ckeditor.fields
import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('news', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='berita',
            name='kategori_utama',
        ),
        migrations.AlterField(
            model_name='berita',
            name='headline',
            field=models.TextField(validators=[django.core.validators.MinLengthValidator(100)]),
        ),
        migrations.AlterField(
            model_name='berita',
            name='isi',
            field=ckeditor.fields.RichTextField(validators=[django.core.validators.MinLengthValidator(300)]),
        ),
        migrations.AlterField(
            model_name='berita',
            name='judul',
            field=models.CharField(max_length=255, unique=True, validators=[django.core.validators.MinLengthValidator(10)]),
        ),
    ]
