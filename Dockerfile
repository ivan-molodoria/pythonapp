FROM divio/django-cms-preview
EXPOSE 8000
COPY ./app /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install --no-cache-dir zc.recipe.egg
RUN pip install -r requirements.txt
ENTRYPOINT python manage.py runserver 0.0.0.0:8000

