from rest_framework import generics

from .models import News
from .serializers import NewsSerializer


class NewsAPIView(generics.ListAPIView):
    queryset = News.objects.all().order_by('-date')
    serializer_class = NewsSerializer
