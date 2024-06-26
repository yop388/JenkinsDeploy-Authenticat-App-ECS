FROM python:3

WORKDIR /data

RUN pip install django

COPY . .

RUN python manage.py migrate

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]
