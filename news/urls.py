from django.urls import path
from .views import NewsAPIView


urlpatterns = [
    path('news/', NewsAPIView.as_view(), name='all_news')
]
