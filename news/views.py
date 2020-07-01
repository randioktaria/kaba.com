from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout
from .forms import LoginForm, RegisterForm, KomentarForm
from .models import (
    KategoriUtama, 
    KategoriTambahan,
    Berita,
    Komentar,
    )
    
# Create your views here.

def home(request, id=None, kategori=None):

    kategori_utama = KategoriUtama.objects.order_by('nama')

    if kategori == 'utama':
        kategori_tambahan = KategoriTambahan.objects.filter(kategori_utama=id).order_by('nama')
        berita = Berita.objects.filter(kategori_utama=id, publish=True).order_by('-tgl_post')

        try:
            berita_terbaru = Berita.objects.filter(kategori_utama=id, publish=True).order_by('-tgl_post')[0]
        except:
            berita_terbaru = None

    elif kategori == 'tambahan':
        kategori_tambahan = KategoriTambahan.objects.filter(id=id).order_by('nama')
        berita = Berita.objects.filter(kategori_tambahan=id, publish=True).order_by('-tgl_post')

        try:
            berita_terbaru = Berita.objects.filter(kategori_tambahan=id, publish=True).order_by('-tgl_post')[0]
        except:
            berita_terbaru = None
    else: 
        kategori_tambahan = KategoriTambahan.objects.order_by('nama')
        berita = Berita.objects.filter(publish=True).order_by('-tgl_post')

        try:
            berita_terbaru = Berita.objects.filter(publish=True).order_by('-tgl_post')[0]
        except:
            berita_terbaru = None

    count_berita = [Berita.objects.filter(publish=True, kategori_tambahan=kategori_tambahan.id).count() for kategori_tambahan in kategori_tambahan]
    kategori_tambahan_list_count_berita = zip(count_berita, kategori_tambahan)

    hitung_komentar_by_berita = [Komentar.objects.filter(berita=berita.id).count() for berita in berita]
    berita_komentar = zip(hitung_komentar_by_berita, berita)

    # komentar terbaru
    komentar_terbaru = Komentar.objects.order_by('-tgl_post')[0:5]

    context = {
        'kategori_utama': kategori_utama,
        'berita_terbaru': berita_terbaru,
        'berita_komentar': berita_komentar,
        'kategori_tambahan_list_count_berita': kategori_tambahan_list_count_berita,
        'komentar_terbaru': komentar_terbaru,
    }

    return render(request, 'news/home.html', context)


def detail(request, slug):

    kategori_utama = KategoriUtama.objects.order_by('nama')
    berita = Berita.objects.get(slug=slug)
    
    kategori_utama_get_id = KategoriUtama.objects.get(id=berita.kategori_utama_id)
    kategori_tambahan = KategoriTambahan.objects.filter(kategori_utama=kategori_utama_get_id.id).order_by('nama')
	
    count_berita = [Berita.objects.filter(kategori_tambahan=i.id).count() for i in kategori_tambahan]
    kategori_tambahan_list_count_berita = zip(count_berita, kategori_tambahan)

    form_login = LoginForm()
    form_register = RegisterForm()

    # komentar terbaru
    komentar_terbaru = Komentar.objects.order_by('-tgl_post')[0:5]

    # menampilkan komentar
    hitung_komentar = Komentar.objects.filter(berita=berita.id).count()
    komentar = Komentar.objects.filter(berita=berita.id).order_by('-tgl_post')

    # post komentar
    if request.user.is_authenticated:
        form_komentar = KomentarForm(request.POST or None)
        if request.method == 'POST':
            if form_komentar.is_valid():
                Komentar.objects.create(
                    user_id = request.user.id,
                    berita_id = berita.id,
                    komentar = form_komentar.cleaned_data.get('komentar'),
                )

                return redirect(request.META['HTTP_REFERER'])
    else:
        form_komentar = None

    context = {
        'kategori_utama': kategori_utama,
        'berita': berita,
        'kategori_tambahan_list_count_berita': kategori_tambahan_list_count_berita,
        'form_login': form_login,
        'form_register': form_register,
        'form_komentar': form_komentar,
        'slug': slug,
        'hitung_komentar': hitung_komentar,
        'komentar': komentar,
        'komentar_terbaru': komentar_terbaru,
    }

    return render(request, 'news/detail.html', context)

def register_view(request):
    if request.method == 'POST':
        form = RegisterForm(request.POST)
        if form.is_valid():
            User.objects.create_user(
                username=form.cleaned_data.get('username'),
                password=form.cleaned_data.get('password'),
                email=form.cleaned_data.get('email'),
                first_name=form.cleaned_data.get('nama_depan'),
                last_name=form.cleaned_data.get('nama_belakang'),
            )

            # jika registrasi berhasil user langsung login
            user = authenticate(request, username=form.cleaned_data.get('username'), password=form.cleaned_data.get('password'))

            if user is not None:
                login(request, user)
                return redirect(request.META['HTTP_REFERER'])
            else:
                return redirect(request.META['HTTP_REFERER'])

def login_view(request):
    username = request.POST['username']
    password = request.POST['password']
    
    user = authenticate(request, username=username, password=password)

    if user is not None:
        login(request, user)
        return redirect(request.META['HTTP_REFERER'])
    else:
        return redirect(request.META['HTTP_REFERER'])

def logout_view(request):
    logout(request)
    return redirect(request.META['HTTP_REFERER'])
