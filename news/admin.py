from django.contrib import admin
from .models import KategoriUtama, KategoriTambahan, Berita, Komentar
# Register your models here.

class KategoriUtamaAdmin(admin.ModelAdmin):
    list_display = ('nama', 'keterangan')
    list_per_page = 10
    search_fields = ['nama']

class KategoriTambahanAdmin(admin.ModelAdmin):
    list_display = ('nama', 'keterangan')
    list_per_page = 10
    search_fields = ['nama']

class BeritaAdmin(admin.ModelAdmin):
    list_display = ('judul', 'header', 'publish')
    list_filter = ('publish', 'kategori_utama')
    list_per_page = 10
    search_fields = ['judul']

    fieldsets = [
        (None, {'fields': ['judul', 'header', 'isi', 'foto']}),
        ('kategori', {'fields': ['kategori_utama', 'kategori_tambahan']}),
        ('Publish Berita', {'fields': ['publish']}),
    ]

    def save_model(self, request, obj, form, channge):
        if channge is False:
            obj.penulis = request.user

        super().save_model(request, obj, form, channge)

    def get_queryset(self, request):
        berita = super().get_queryset(request)

        if request.user.is_superuser:
            return berita
            
        return berita.filter(penulis=request.user)
    
    def get_readonly_fields(self, request, obj):
        
        if request.user.is_superuser:
            if obj is not None:
                if request.user.id != obj.penulis.id:
                    readonly_fields = ('judul', 'header', 'isi', 'foto','kategori_utama', 'kategori_tambahan',)
                    return readonly_fields
                else:
                    return super().get_readonly_fields(request)
            else:
                return super().get_readonly_fields(request, obj)
        else:
            readonly_fields = ('publish')
            return readonly_fields


class KomentarAdmin(admin.ModelAdmin):
    list_display = ('komentar', )
    readonly_fields = ('user', 'berita', 'komentar')


admin.site.register(KategoriUtama, KategoriUtamaAdmin)
admin.site.register(KategoriTambahan, KategoriTambahanAdmin)
admin.site.register(Berita, BeritaAdmin)
admin.site.register(Komentar, KomentarAdmin)
