from email import message
from django.shortcuts import render,redirect,get_object_or_404
from .forms import *
from .models import *
from django.contrib import messages
#counting visitors imports
from django.utils.timezone import now
from datetime import timedelta
#authentication
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from .decorators import unauthenticated_user,allowed_users,admin_only
#change password
from django.contrib.auth.views import PasswordChangeView
from .forms import PasswordChangeCustomForm
from django.urls import reverse_lazy



#authentication functions
@unauthenticated_user
def login_user(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username,password=password)
        if user is not None:
            login(request, user)
            return redirect('admin_home')
        else:
            messages.info(request,'username or password is incorrect') 

    return render(request,'pages/auth/login.html')




def logoutUser(request):
    logout(request)
    return redirect('login_user')

#change password class
class CustomPasswordChangeView(PasswordChangeView):
    form_class = PasswordChangeCustomForm
    template_name = 'pages/admins/change-password.html'
    success_url = reverse_lazy('password_change_done')


@login_required(login_url='login_user')
@admin_only
def admin_home(request):
    """View for the admin dashboard showing visitor statistics."""
    today = now().date()
    week_start = today - timedelta(days=today.weekday())  # Start of the current week
    month_start = today.replace(day=1)  # Start of the current month

    # Count visitors
    total_visitors = Visitor.objects.count()
    daily_visitors = Visitor.objects.filter(visit_time__date=today).count()
    weekly_visitors = Visitor.objects.filter(visit_time__date__gte=week_start).count()
    monthly_visitors = Visitor.objects.filter(visit_time__date__gte=month_start).count()

    context = {
        'total_visitors': total_visitors,
        'daily_visitors': daily_visitors,
        'weekly_visitors': weekly_visitors,
        'monthly_visitors': monthly_visitors,
    }
    
    return render(request, 'pages/admins/home.html', context)


@login_required(login_url='login_user')
@admin_only
def sliders(request):
    slider = Slider.objects.all().order_by('-date')
    if request.method == 'POST':
        form = SliderForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request,'Slider saved successfully')
        else:
            messages.error(request,'Sothing went wrong')
        return redirect('sliders')
    else:
        form = SliderForm()
    context={
        'form':form,
        'slider':slider,
    }
    return render(request,'pages/admins/sliders.html',context)


@login_required(login_url='login_user')
@admin_only
def edit_sliders(request,id):
    slide = Slider.objects.get(id=id)
    if request.method == 'POST':
        form = SliderForm(request.POST or None,request.FILES or None,instance=slide)
        if form.is_valid():
            form.save()
            messages.success(request,'Slider updated successfully!')
        else:
            messages.error(request,'Something went wrong! Please try again')
        return redirect('sliders')
    else:
        form = SliderForm(instance=slide)
    context={
        'form':form,
    }
    return render(request,'pages/admins/edit-slider.html',context)


@login_required(login_url='login_user')
@admin_only
def delete_sliders(request,id):
    slide = Slider.objects.get(id=id)
    slide.delete()
    if slide:
        messages.success(request,'Slider deleted successfully!')
    else:
        messages.error(request,'Something went wrong! Please try again')
    return redirect('sliders')

@login_required(login_url='login_user')
@admin_only
def story_page(request):
    story = Story.objects.all()
    if request.method == 'POST':
        form = StoryForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request,'Story saved successfully')
        else:
            messages.error(request,'Sothing went wrong')
        return redirect('story_page')
    else:
        form = StoryForm()
    context={
        'form':form,
        'story':story,
    }
    return render(request,'pages/admins/story.html',context)


@login_required(login_url='login_user')
@admin_only
def edit_story(request,id):
    story = Story.objects.get(id=id)
    if request.method == 'POST':
        form = StoryForm(request.POST or None,request.FILES or None,instance=story)
        if form.is_valid():
            form.save()
            messages.success(request,'Story saved successfully')
        else:
            messages.error(request,'Sothing went wrong')
        return redirect('story_page')
    else:
        form = StoryForm(instance=story)
    context={
        'form':form,
    }
    return render(request,'pages/admins/edit-story.html',context)


@login_required(login_url='login_user')
@admin_only
def delete_story(request,id):
    story = Story.objects.get(id=id)
    story.delete()
    if story:
        messages.success(request,'Story deleted successfully!')
    else:
        messages.error(request,'Something went wrong! Please try again')
    return redirect('story_page')


@login_required(login_url='login_user')
@admin_only
def choose_page(request):
    choose_items = ChooseUs.objects.all()
    if request.method == 'POST':
        form = ChooseUsForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Item saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('choose_page')
    else:
        form = ChooseUsForm()
    context = {
        'form': form,
        'choose_items': choose_items,
    }
    return render(request, 'pages/admins/choose.html', context)


@login_required(login_url='login_user')
@admin_only
def edit_choose(request, id):
    choose_item = get_object_or_404(ChooseUs, id=id)
    if request.method == 'POST':
        form = ChooseUsForm(request.POST or None, request.FILES or None, instance=choose_item)
        if form.is_valid():
            form.save()
            messages.success(request, 'Item updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('choose_page')
    else:
        form = ChooseUsForm(instance=choose_item)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-choose.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_choose(request, id):
    choose_item = get_object_or_404(ChooseUs, id=id)
    choose_item.delete()
    messages.success(request, 'Item deleted successfully!')
    return redirect('choose_page')


@login_required(login_url='login_user')
@admin_only
def service(request):
    service_item = Service.objects.all()
    if request.method == 'POST':
        form = ServiceForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Service saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('service')
    else:
        form = ServiceForm()
    context = {
        'form': form,
        'service_item':service_item,
    }
    return render(request, 'pages/admins/service.html', context)


@login_required(login_url='login_user')
@admin_only
def edit_service(request, id):
    service = get_object_or_404(Service, id=id)
    if request.method == 'POST':
        form = ServiceForm(request.POST or None, request.FILES or None, instance=service)
        if form.is_valid():
            form.save()
            messages.success(request, 'Service updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('service')
    else:
        form = ServiceForm(instance=service)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-service.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_service(request, id):
    service = get_object_or_404(Service, id=id)
    service.delete()
    messages.success(request, 'Service deleted successfully!')
    return redirect('service')


@login_required(login_url='login_user')
@admin_only
def news_update(request):
    news = News.objects.all()
    if request.method == 'POST':
        form = NewsForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request,'News saved successfully')
        else:
            messages.error(request,'Sothing went wrong')
        return redirect('news_update')
    else:
        form = NewsForm()
    context={
        'form':form,
        'news':news,
    }
    return render(request,'pages/admins/news.html',context)



@login_required(login_url='login_user')
@admin_only
def edit_news_update(request,id):
    news = News.objects.get(id=id)
    if request.method == 'POST':
        form = NewsForm(request.POST or None,request.FILES or None,instance=news)
        if form.is_valid():
            form.save()
            messages.success(request,'News updated successfully')
        else:
            messages.error(request,'Something went wrong')
        return redirect('news_update')
    else:
        form = NewsForm(instance=news)
    context={
        'form': form,
    }
    return render(request,'pages/admins/edit-news.html',context)


@login_required(login_url='login_user')
@admin_only
def delete_news_update(request,id):
    news = News.objects.get(id=id)
    news.delete()
    if news:
        messages.success(request,'News deleted successfully')
    else:
        messages.error(request,'Something went wrong')
    return redirect('news_update')

@login_required(login_url='login_user')
@admin_only
def question_page(request):
    faqs = Faq.objects.all().order_by('-date')
    if request.method == 'POST':
        form = FaqForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'FAQ saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('question_page')
    else:
        form = FaqForm()
    context = {
        'form': form,
        'faqs': faqs,
    }
    return render(request, 'pages/admins/questions.html', context)


@login_required(login_url='login_user')
@admin_only
def edit_question(request, id):
    faq = get_object_or_404(Faq, id=id)
    if request.method == 'POST':
        form = FaqForm(request.POST or None, instance=faq)
        if form.is_valid():
            form.save()
            messages.success(request, 'FAQ updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('question_page')
    else:
        form = FaqForm(instance=faq)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-questions.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_question(request, id):
    faq = get_object_or_404(Faq, id=id)
    faq.delete()
    messages.success(request, 'FAQ deleted successfully!')
    return redirect('question_page')


@login_required(login_url='login_user')
@admin_only
def mission_page(request):
    missions = Mission.objects.all()
    if request.method == 'POST':
        form = MissionForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Mission saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('mission_page')
    else:
        form = MissionForm()
    context = {
        'form': form,
        'missions': missions,
    }
    return render(request, 'pages/admins/mission.html', context)


@login_required(login_url='login_user')
@admin_only
def edit_mission(request, id):
    mission = get_object_or_404(Mission, id=id)
    if request.method == 'POST':
        form = MissionForm(request.POST or None,request.FILES or None, instance=mission)
        if form.is_valid():
            form.save()
            messages.success(request, 'Mission updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('mission_page')
    else:
        form = MissionForm(instance=mission)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-mission.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_mission(request, id):
    mission = get_object_or_404(Mission, id=id)
    mission.delete()
    messages.success(request, 'Mission deleted successfully!')
    return redirect('mission_page')



@login_required(login_url='login_user')
@admin_only
def whyus_page(request):
    # Fetch all the WhyUs entries
    item = WhyUs.objects.all()
    
    if request.method == 'POST':
        form = WhyUsForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'WhyUs entry saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('whyus_page')  # Redirect to the same page to show updated list
    else:
        form = WhyUsForm()
    
    context = {
        'form': form,
        'item': item,
    }
    return render(request, 'pages/admins/whyus.html', context)



@login_required(login_url='login_user')
@admin_only
def edit_whyus(request, id):
    # Fetch the WhyUs entry by ID
    whyus = get_object_or_404(WhyUs, id=id)
    
    if request.method == 'POST':
        form = WhyUsForm(request.POST or None, request.FILES or None, instance=whyus)
        if form.is_valid():
            form.save()
            messages.success(request, 'WhyUs entry updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('whyus_page')  # Redirect to the page that lists all WhyUs entries
    else:
        form = WhyUsForm(instance=whyus)
    
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-whyus.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_whyus(request, id):
    # Fetch the WhyUs entry by ID
    whyus = get_object_or_404(WhyUs, id=id)
    whyus.delete()
    messages.success(request, 'WhyUs entry deleted successfully!')
    return redirect('whyus_page')  # Redirect to the page that lists all WhyUs entries



@login_required(login_url='login_user')
@admin_only
def vision_page(request):
    visions = Vision.objects.all()
    if request.method == 'POST':
        form = VisionForm(request.POST or None,request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Vision saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('vision_page')
    else:
        form = VisionForm()
    context = {
        'form': form,
        'visions': visions,
    }
    return render(request, 'pages/admins/vision.html', context)



@login_required(login_url='login_user')
@admin_only
def edit_vision(request, id):
    vision = get_object_or_404(Vision, id=id)
    if request.method == 'POST':
        form = VisionForm(request.POST or None,request.FILES or None, instance=vision)
        if form.is_valid():
            form.save()
            messages.success(request, 'Vision updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('vision_page')
    else:
        form = VisionForm(instance=vision)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-vision.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_vision(request, id):
    vision = get_object_or_404(Vision, id=id)
    vision.delete()
    messages.success(request, 'Vision deleted successfully!')
    return redirect('vision_page')


@login_required(login_url='login_user')
@admin_only
def value_page(request):
    values = Value.objects.all()
    if request.method == 'POST':
        form = ValueForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Value saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('value_page')
    else:
        form = ValueForm()
    context = {
        'form': form,
        'values': values,
    }
    return render(request, 'pages/admins/values.html', context)


@login_required(login_url='login_user')
@admin_only
def edit_value(request, id):
    value = get_object_or_404(Value, id=id)
    if request.method == 'POST':
        form = ValueForm(request.POST or None, instance=value)
        if form.is_valid():
            form.save()
            messages.success(request, 'Value updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('value_page')
    else:
        form = ValueForm(instance=value)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-values.html', context)


@login_required(login_url='login_user')
@admin_only
def delete_value(request, id):
    value = get_object_or_404(Value, id=id)
    value.delete()
    messages.success(request, 'Value deleted successfully!')
    return redirect('value_page')



@login_required(login_url='login_user')
@admin_only
def where_page(request):
    locations = WhereWeAre.objects.all()
    if request.method == 'POST':
        form = WhereWeAreForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Location saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('where_page')
    else:
        form = WhereWeAreForm()
    context = {
        'form': form,
        'locations': locations,
    }
    return render(request, 'pages/admins/where.html', context)



@login_required(login_url='login_user')
@admin_only
def edit_where(request, id):
    location = get_object_or_404(WhereWeAre, id=id)
    if request.method == 'POST':
        form = WhereWeAreForm(request.POST or None, instance=location)
        if form.is_valid():
            form.save()
            messages.success(request, 'Location updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('where_page')
    else:
        form = WhereWeAreForm(instance=location)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-where.html', context)



@login_required(login_url='login_user')
@admin_only
def delete_where(request, id):
    location = get_object_or_404(WhereWeAre, id=id)
    location.delete()
    messages.success(request, 'Location deleted successfully!')
    return redirect('where_page')



@login_required(login_url='login_user')
@admin_only
def product_page(request):
    products = Product.objects.all()
    if request.method == 'POST':
        form = ProductForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            form.save()
            messages.success(request, 'Product saved successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('product_page')
    else:
        form = ProductForm()
    context = {
        'form': form,
        'products': products,
    }
    return render(request, 'pages/admins/product.html', context)



@login_required(login_url='login_user')
@admin_only
def edit_product(request, id):
    product = get_object_or_404(Product, id=id)
    if request.method == 'POST':
        form = ProductForm(request.POST or None, request.FILES or None, instance=product)
        if form.is_valid():
            form.save()
            messages.success(request, 'Product updated successfully')
        else:
            messages.error(request, 'Something went wrong')
        return redirect('product_page')
    else:
        form = ProductForm(instance=product)
    context = {
        'form': form,
    }
    return render(request, 'pages/admins/edit-product.html', context)



@login_required(login_url='login_user')
@admin_only
def delete_product(request, id):
    product = get_object_or_404(Product, id=id)
    product.delete()
    messages.success(request, 'Product deleted successfully!')
    return redirect('product_page')



@login_required(login_url='login_user')
@admin_only
def admin_contact(request):
    contact = Contact.objects.all().order_by('-date')
    context={
        'contact':contact,
    }
    return render(request,'pages/admins/contact.html',context)



@login_required(login_url='login_user')
@admin_only
def delete_contact(request,id):
    contact = Contact.objects.get(id=id)
    contact.delete()
    if contact:
        messages.success(request,'Contact deleted successfully')
    else:
        messages.error(request,'Something went wrong')
    return redirect('admin_contact')




@login_required(login_url='login_user')
@admin_only
def address_path(request):
    address = AddressModel.objects.all()
    if request.method == 'POST':
        form = AddressModelForm(request.POST or None)
        if form.is_valid():
            form.save()
            messages.success(request,'Contact saved successfully')
        else:
            messages.error(request,'Something went wrong')
        return redirect('address_path')
    else:
        form = AddressModelForm()
    context={
        'form':form,
        'address':address,
    }
    return render(request,'pages/admins/address.html',context)




@login_required(login_url='login_user')
@admin_only
def edit_address_path(request,id):
    address = AddressModel.objects.get(id=id)
    if request.method == 'POST':
        form = AddressModelForm(request.POST or None,instance=address)
        if form.is_valid():
            form.save()
            messages.success(request,'Content updated successfully')
        else:
            messages.error(request,'Something went wrong')
        return redirect('address_path')
    else:
        form = AddressModelForm(instance=address)
    context={
        'form': form,
    }
    return render(request,'pages/admins/edit-address.html',context)



@login_required(login_url='login_user')
@admin_only
def delete_address_path(request,id):
    address = AddressModel.objects.get(id=id)
    address.delete()
    if address:
        messages.success(request,'Content deleted successfully')
    else:
        messages.error(request,'Something went wrong')
    return redirect('address_path')
