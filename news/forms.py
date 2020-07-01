from django import forms

class LoginForm(forms.Form):
    username = forms.CharField(max_length=25, widget=forms.TextInput(attrs={'placeholder': 'Username'}))
    password = forms.CharField(max_length=25, widget=forms.PasswordInput(attrs={'placeholder': 'Password'}))

class RegisterForm(forms.Form):
    username = forms.CharField(max_length=25, widget=forms.TextInput(attrs={'placeholder': 'Username'}))
    password = forms.CharField(max_length=25, widget=forms.PasswordInput(attrs={'placeholder': 'Password'}))
    nama_depan = forms.CharField(max_length=50, widget=forms.TextInput(attrs={'placeholder': 'Nama depan'}))
    nama_belakang = forms.CharField(max_length=50, widget=forms.TextInput(attrs={'placeholder': 'Nama belakang'}))
    email = forms.EmailField(max_length=25, widget=forms.EmailInput(attrs={'placeholder': 'Email'}))

class KomentarForm(forms.Form):
    komentar = forms.CharField(max_length=255, widget=forms.Textarea(attrs={'placeholder': 'Tulis Komentar Anda Disini'}))