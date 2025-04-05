from django.contrib import admin
from .models import *


admin.site.register([
    Slider,
    Story,
    ChooseUs,
    Service,
    News,
    Faq,
    Mission,
    Vision,
    Value,
    WhereWeAre,
    WhyUs,
    Product,
    Contact,
    AddressModel,
    Visitor
])