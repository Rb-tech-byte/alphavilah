from django.urls import path
from .import views
from django.conf import settings
from django.conf.urls.static import static
from .import admins
from .admins import CustomPasswordChangeView
from django.contrib.auth import views as auth_views
from django.contrib.auth.decorators import login_required

urlpatterns=[
    path('',views.home,name='home'),
    path('about_page',views.about_page,name='about_page'),
    path('service_page',views.service_page,name='service_page'),
    path('products_page',views.products_page,name='products_page'),
    path('contact_page',views.contact_page,name='contact_page'),
    path('news_details/<int:id>',views.news_details,name='news_details'),
    #adminurls
    path('admin_home',admins.admin_home,name='admin_home'),
    #authenticationurls
    path('login_user', admins.login_user,name='login_user'),
    path('logoutUser', admins.logoutUser,name='logoutUser'),
    #change password
    path('change-password/', CustomPasswordChangeView.as_view(), name='change_password'),
    path('change-password/', 
         login_required(auth_views.PasswordChangeView.as_view(
             template_name='pages/admins/change-password.html'
         )), 
         name='change_password'),

    path('password-change-done/', 
         auth_views.PasswordChangeDoneView.as_view(template_name='pages/admins/password_change_done.html'), 
         name='password_change_done'),
    #sliders
    path('sliders',admins.sliders,name='sliders'),
    path('edit_sliders/<int:id>',admins.edit_sliders,name='edit_sliders'),
    path('delete_sliders/<int:id>',admins.delete_sliders,name='delete_sliders'),
    #story
    path('story_page',admins.story_page,name='story_page'),
    path('edit_story/<int:id>',admins.edit_story,name='edit_story'),
    path('delete_story/<int:id>',admins.delete_story,name='delete_story'),
    #choose us
    path('choose_page',admins.choose_page,name='choose_page'),
    path('edit_choose/<int:id>',admins.edit_choose,name='edit_choose'),
    path('delete_choose/<int:id>',admins.delete_choose,name='delete_choose'),
    #service
    path('service',admins.service,name='service'),
    path('edit_service/<int:id>',admins.edit_service,name='edit_service'),
    path('delete_service/<int:id>',admins.delete_service,name='delete_service'),
    #news
    path('news_update',admins.news_update,name='news_update'),
    path('edit_news_update/<int:id>',admins.edit_news_update,name='edit_news_update'),
    path('delete_news_update/<int:id>',admins.delete_news_update,name='delete_news_update'),
    #faqs
    path('faqs/',admins.question_page, name='question_page'),
    path('faqs/edit/<int:id>/',admins.edit_question, name='edit_question'),
    path('faqs/delete/<int:id>/',admins.delete_question, name='delete_question'),
    #why us
    path('whyus_page',admins.whyus_page,name='whyus_page'),
    path('edit_whyus/<int:id>',admins.edit_whyus,name='edit_whyus'),
    path('delete_whyus/<int:id>',admins.delete_whyus,name='delete_whyus'),
    #mission
    path('mission_page',admins.mission_page,name='mission_page'),
    path('edit_mission/<int:id>',admins.edit_mission,name='edit_mission'),
    path('delete_mission/<int:id>',admins.delete_mission,name='delete_mission'),
    #vision
    path('vision_page',admins.vision_page,name='vision_page'),
    path('edit_vision/<int:id>',admins.edit_vision,name='edit_vision'),
    path('delete_vision/<int:id>',admins.delete_vision,name='delete_vision'),
    #values
    path('value_page',admins.value_page,name='value_page'),
    path('edit_value/<int:id>',admins.edit_value,name='edit_value'),
    path('delete_value/<int:id>',admins.delete_value,name='delete_value'),
    #where
    path('where_page',admins.where_page,name='where_page'),
    path('edit_where/<int:id>',admins.edit_where,name='edit_where'),
    path('delete_where/<int:id>',admins.delete_where,name='delete_where'),
    #product
    path('product_page',admins.product_page,name='product_page'),
    path('edit_product/<int:id>',admins.edit_product,name='edit_product'),
    path('delete_product/<int:id>',admins.delete_product,name='delete_product'),
    #contacturls
    path('admin_contact',admins.admin_contact,name='admin_contact'),
    path('delete_contact/<int:id>',admins.delete_contact,name='delete_contact'),
    #addressurls
    path('address_path',admins.address_path,name='address_path'),
    path('edit_address_path/<int:id>',admins.edit_address_path,name='edit_address_path'),
    path('delete_address_path/<int:id>',admins.delete_address_path,name='delete_address_path'),



]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
