FROM python:3.8

WORKDIR /opt/app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD gunicorn --bind 0.0.0.0:$PORT wsgi
