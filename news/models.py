from django.db import models
from django.utils import timezone
from django.utils.text import slugify
from ckeditor.fields import RichTextField


def upload_location(obj, filename):
    
    extension = ''
    for i in range(len(filename)-1, 0, -1):
        if filename[i] == '.':
            break
        extension += filename[i]

    time = timezone.now().strftime('%d-%m-%Y')
    return f'news/{time}/{obj.slug}.{extension[::-1]}'


class KategoriUtama(models.Model):
    nama = models.CharField(max_length=30)
    keterangan = models.TextField()

    class Meta:
        verbose_name_plural = 'Kategori utama'

    def __str__(self):
        return self.nama

class KategoriTambahan(models.Model):
    nama = models.CharField(max_length=30)
    keterangan = models.TextField()
    kategori_utama = models.ForeignKey(KategoriUtama, on_delete=models.CASCADE)

    class Meta:
        verbose_name_plural = 'Kategori tambahan'

    def __str__(self):
        return self.nama
    
class Berita(models.Model):
    kategori_utama = models.ForeignKey(KategoriUtama, on_delete=models.CASCADE)
    kategori_tambahan = models.ForeignKey(KategoriTambahan, on_delete=models.CASCADE)
    penulis = models.ForeignKey('auth.User', on_delete=models.CASCADE, editable=False)
    judul = models.CharField(max_length=255)
    headline = models.TextField()
    isi = RichTextField()
    foto = models.ImageField(upload_to=upload_location)
    tgl_post = models.DateTimeField(auto_now_add=True)
    publish = models.BooleanField(default=False)
    tgl_publish = models.DateTimeField(blank=True, null=True)
    slug = models.SlugField(max_length=255, editable=False)
   

    class Meta:
        verbose_name_plural = 'Berita'

    def __str__(self):
        return self.judul

    def save(self):
        self.slug = slugify(self.judul)

        if self.publish is True:
            self.tgl_publish = timezone.now()
        else:
            self.tgl_publish = None

        super().save()

class Komentar(models.Model):
    user = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    berita = models.ForeignKey(Berita, on_delete=models.CASCADE)
    komentar = models.TextField()
    tgl_post = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = 'Komentar'

    def __str__(self):
        return self.komentar