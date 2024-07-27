[Flutter Full Stack App Development Course With Django and Backend](https://www.youtube.com/watch?v=wkqiUR-Dhg0)
---
8:21:38
---
- [backend](..%2F..%2FDownloads%2F2024%2F0000.%20Precode%20files%2Fbackend)
- <Backend> 8:51:13

1. python3 -m venv venv
2. source venv/bin/activate
3. pip3 install django
4. pip install --upgrade pip
5. mkdir app_backend
6. cd app_backend
7. django-admin startproject backend .
8. python manage.py runserver
---
9. python manage.py migrate
10. python manage.py createsuperuser
11. pip install django-jazzmin
12. pip install djoser
19. pip freeze > requirements.txt
20. python manage.py migrate
---
11. python manage.py startapp core

---

12. python manage.py makemigrations cart
13. find . -path "*/migrations/*.py" -not -name "__init__.py" -delete
14. find . -path "*/migrations/*.pyc"  -delete
15. python manage.py dbshell
16. sqlite> .table
17. sqlite> DROP TABLE <table>;

![alt text](image.png)

<!-- REST_FRAMEWORK = {
    'DEFAULT_AUTHENTIFICATION_CLASSES': (
        'rest_framework.authentication.SessionAuthentication',
    )
}
 -->

 <!-- Go to backend >>> urls.py and impot include-->

# from django.urls import path, include

<!-- add the below code at the after [path('admin/', admin.site.urls),] in the urls.py -->

#    path('auth/', include('djoser.urls')),
#   path('auth/', include('djoser.urls.authtoken')),

16. python manage.py migrate

[
1. Sign up || http://127.0.0.1:8000/auth/users/
2. Login || http://127.0.0.1:8000/auth/token/login/
3. Profile || http://127.0.0.1:8000/auth/users/me/
4. Set password || http://127.0.0.1:8000/auth/users/set_password/
5. Set username || http://127.0.0.1:8000/auth/users/set_username/
]

#Creating Categories
17. python manage.py makemigrations [app]
18. python manage.py migrate [app]

19. pip freeze > requirements.txt
20. pip install -r requirements.txt




---
- (venv) toyodahideyuki@ToyodaHideyukinoMacBook-Pro app_backend % pwd
- /Users/toyodahideyuki/StudioProjects/test_fashion_app_django_backend/app_backend
---
9:29:39
