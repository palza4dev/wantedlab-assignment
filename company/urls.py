from django.urls import path

from .views import CompanyView, CompanySearchView

urlpatterns = [
    path('', CompanyView.as_view()),
    path('/<str:company_name>', CompanySearchView.as_view())
]
