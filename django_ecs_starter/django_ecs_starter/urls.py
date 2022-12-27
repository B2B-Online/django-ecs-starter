from django.urls import re_path, include

urlpatterns = [
    re_path(r'^ht/', include('health_check.urls')),
    re_path(r'^health_check/', include('health_check.urls')),
    re_path(r'^', include('health_check.urls')),
]