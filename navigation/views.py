from typing import Any
from django.shortcuts import render
from django.conf import settings
# Create your views here.

def map(request):
    return render(request,'index.html')