FROM divio/django-cms-preview
EXPOSE 8000:8000
COPY ./app /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -e requirements.txt
RUN pip install -e jvm_toolbox-0.4.16/
ENTRYPOINT python manage.py runserver 0.0.0.0:8000

