from django.shortcuts import render,redirect
from .models import *
from .forms import *
from django.core.paginator import Paginator
from django.contrib import messages
#Counting visitors
from django.utils.timezone import now


def get_client_ip(request):
    """Retrieve client IP address."""
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip



def home(request):
    #news pagination
    news_list = News.objects.filter(status='publish').order_by('-date')  # Order by latest news first
    paginator = Paginator(news_list, 3)  # Show 3 news items per page

    page_number = request.GET.get('page')
    news_page = paginator.get_page(page_number)
    #endnews pagination

    sliders = Slider.objects.all()
    story = Story.objects.all()
    choose = ChooseUs.objects.all()
    service = Service.objects.all()
    freq = Faq.objects.all()
    
    # Track visitor per day
    ip = get_client_ip(request)
    today = now().date()

    if not Visitor.objects.filter(ip_address=ip, visit_time__date=today).exists():
        Visitor.objects.create(ip_address=ip)

        
    context={
        'sliders':sliders,
        'story':story,
        'choose':choose,
        'service':service,
        'news':news_page,
        'freq':freq
    }
    return render(request,'pages/users/home.html',context)


def news_details(request,id):
    news = News.objects.get(id=id)
    return render(request,'pages/users/news-details.html',{'news':news})


def about_page(request):
    why = WhyUs.objects.all()
    miss = Mission.objects.all()
    vis = Vision.objects.all()
    item = WhereWeAre.objects.all()
    values = Value.objects.all()
    context={
        'why':why,
        'miss':miss,
        'vis':vis,
        'item':item,
        'values':values
    }
    return render(request,'pages/users/about.html',context)



def service_page(request):
    service = Service.objects.all().order_by('-date')
    paginator = Paginator(service, 6)  # Show 6 service items per page

    page_number = request.GET.get('page')
    service_page = paginator.get_page(page_number)
    context={
        'service':service_page
    }
    return render(request,'pages/users/service.html',context)



def products_page(request):
    products = Product.objects.all().order_by('-date')
    paginator = Paginator(products, 3)  # Show 6 service items per page

    page_number = request.GET.get('page')
    products_page = paginator.get_page(page_number)
    context={
        'products':products_page
    }
    return render(request,'pages/users/products.html',context)



def contact_page(request):
    address = AddressModel.objects.all()
    if request.method == 'POST':
        form = ContactForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request,'Message sent successfully')
        else:
            messages.error(request,'something went wrong')
        return redirect('contact_page')
    else:
        form = ContactForm()
    context = {
        'form': form,
        'address':address,
    }
    return render(request,'pages/users/contact.html',context)
