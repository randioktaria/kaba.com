from django.db import models
from django.utils import timezone
from django.utils.text import slugify

class KategoriUtama(models.Model):
    nama = models.CharField(max_length=30)
    keterangan = models.TextField('Keterangan')

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
    penulis = models.ForeignKey('auth.User', on_delete=models.CASCADE, editable=False)
    judul = models.CharField(max_length=255)
    header = models.CharField(max_length=255)
    isi = models.TextField()
    foto = models.ImageField(upload_to='news')
    tgl_post = models.DateTimeField(auto_now_add=True)
    kategori_utama = models.ForeignKey(KategoriUtama, on_delete=models.CASCADE)
    kategori_tambahan = models.ForeignKey(KategoriTambahan, on_delete=models.CASCADE)
    publish = models.BooleanField(default=False)
    slug = models.SlugField(max_length=255, editable=False)
   

    class Meta:
        verbose_name_plural = 'Berita'

    def save(self):
        self.slug = slugify(self.judul)

        if self.publish is True:
            self.tgl_post = timezone.now()
        else:
            self.tgl_post = None

        super().save()

    def __str__(self):
        return self.judul

class Komentar(models.Model):
    user = models.ForeignKey('auth.User', on_delete=models.CASCADE)
    berita = models.ForeignKey(Berita, on_delete=models.CASCADE)
    komentar = models.TextField()
    tgl_post = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = 'Komentar'

    def __str__(self):
        return self.komentar

