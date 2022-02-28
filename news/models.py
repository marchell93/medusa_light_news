from django.db import models


class News(models.Model):
    date = models.DateField(verbose_name='Дата публикации')
    subject = models.CharField(max_length=256, verbose_name='Заголовок публикации')
    content = models.TextField(verbose_name='Текстовый контент')

    class Meta:
        verbose_name = 'New'
        verbose_name_plural = 'News'
