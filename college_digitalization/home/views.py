from django.shortcuts import render

# Create your views here.
def hello_to_world(request):
    return render(request, "hello_world.html")