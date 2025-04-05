from django.db import models
from ckeditor.fields import RichTextField
from django.core.validators import RegexValidator
# Create your models here.

class Slider(models.Model):
    title = models.CharField(max_length=200)
    sub_title = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title


class Story(models.Model):
    title = models.CharField(max_length=200)
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title
    

class ChooseUs(models.Model):
    title = models.CharField(max_length=200)
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title


class Service(models.Model):
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.description

class Product(models.Model):
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.description



NEWS_STATUS=(
    ('publish','publish'),
    ('unpublish','unpublish'),
)
class News(models.Model):
    title = models.CharField(max_length=200)
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    status = models.CharField(max_length=200,choices=NEWS_STATUS,default='publish')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title


class Faq(models.Model):
    question = models.CharField(max_length=200)
    answer = RichTextField()
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.question

#About Models
class WhyUs(models.Model):
    title = models.CharField(max_length=200)
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/')
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title
    
class Mission(models.Model):
    title = models.CharField(max_length=200,default='Mission')
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/',default=None)
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title

class Vision(models.Model):
    title = models.CharField(max_length=200,default='Vision')
    description = RichTextField()
    image = models.ImageField(max_length=200,upload_to='images/',default=None)
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title

class Value(models.Model):
    title = models.CharField(max_length=200,default='Values')
    description = RichTextField()
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title


class WhereWeAre(models.Model):
    title = models.CharField(max_length=200,default='Where we are')
    description = RichTextField()
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title


class Contact(models.Model):
    full_name = models.CharField(max_length=200)
    email = models.EmailField(max_length=200,unique=True)
    subject = models.CharField(max_length=200)
    message = models.TextField()
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.email
    


class AddressModel(models.Model):
    address = RichTextField()
    phone_number = models.CharField(
        max_length=13, 
        validators=[
            RegexValidator(
                regex=r'^\+255[0-9]{9}$',
                message="Phone number must start with +255 followed by 9 digits."
            )
        ]
    )
    email = models.EmailField(max_length=200)

    def __str__(self):
     return f"{self.address} - {self.phone_number} - {self.email}"


#Models to count the number of visitors
class Visitor(models.Model):
    ip_address = models.GenericIPAddressField()
    visit_time = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.ip_address