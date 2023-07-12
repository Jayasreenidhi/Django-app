FROM python:3

RUN pip install django==3.2
COPY . .

# RUN sudo apt-get update
# RUN  sudo apt-get -y upgrade
# RUN python3 manage.py migrate
RUN python manage.py runserver
CMD ["python","manage.py","runserver","0.0.0.0:8000"]