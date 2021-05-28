FROM python:3.8

WORKDIR /opt/app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

ENV PORT=$PORT

COPY . .
CMD python3 -m flask run --host=0.0.0.0 --port=$PORT
