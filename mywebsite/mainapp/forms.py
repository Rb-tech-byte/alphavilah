from django import forms
from django.forms import ModelForm
from .models import *
from ckeditor.widgets import CKEditorWidget


class ContactForm(ModelForm):
    class Meta:
        model = Contact
        fields='__all__'


class SliderForm(ModelForm):
    class Meta:
        model = Slider
        fields=['title','sub_title','image']

        widgets = {
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter slider title','required':'required'}),
            'sub_title':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter slider sub title','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }



class StoryForm(ModelForm):
    class Meta:
        model = Story
        fields=['title','description','image']

        widgets = {
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter story title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter story description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }
    

class ChooseUsForm(ModelForm):
    class Meta:
        model = ChooseUs
        fields=['title','description','image']

        widgets = {
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter  title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }


class ServiceForm(ModelForm):
    class Meta:
        model = Service
        fields=['description','image']

        widgets = {
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }


class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields=['description','image']

        widgets = {
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
        }
        

class NewsForm(ModelForm):
    class Meta:
        model=News
        fields=['title','description','image','status']
        widgets = {
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter news title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter news description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'status':forms.Select(attrs={'class':'form-control'}),
        }

class FaqForm(ModelForm):
    class Meta:
        model=Faq
        fields=['question','answer']
        widgets = {
            'question':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter title','required':'required'}),
            'answer':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
        }

class MissionForm(ModelForm):
    class Meta:
        model = Mission
        fields=['title','description','image']
        widgets={
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),

        }


class VisionForm(ModelForm):
    class Meta:
        model = Vision
        fields=['title','description','image']
        widgets={
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
            'image':forms.ClearableFileInput(attrs={'class': 'form-control'}),

        }


class ValueForm(ModelForm):
    class Meta:
        model = Value
        fields=['title','description']
        widgets={
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
        }


class WhereWeAreForm(ModelForm):
    class Meta:
        model = WhereWeAre
        fields=['title','description']
        widgets={
            'title':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter title','required':'required'}),
            'description':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter description','required':'required'}),
        }


class AddressModelForm(ModelForm):
    class Meta:
        model = AddressModel
        fields=['address', 'phone_number','email']
        widgets = {
            'address':forms.Textarea(attrs={'class':'form-control','placeholder':'Enter descriptions','required':'required'}),
            'phone_number': forms.TextInput(attrs={'class': 'form-control','placeholder': 'Enter phone number (e.g., +255XXXXXXXXX)','required': 'required'
            }),            
            'email':forms.TextInput(attrs={'class':'form-control','placeholder':'Enter email','required':'required'}),
        }
    
    def clean_phone_number(self):
        phone = self.cleaned_data.get('phone_number')
        if not phone.startswith('+255'):
            raise forms.ValidationError("Phone number must start with +255.")
        if len(phone) != 13 or not phone[4:].isdigit():
            raise forms.ValidationError("Phone number must contain exactly 9 digits after +255.")
        return phone