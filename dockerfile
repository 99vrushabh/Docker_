FROM python:3.8-slim-buster

WORKDIR /py-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 3000

ADD app.py .

RUN export FLASK_APP=app.py

CMD ["flask","run", "--host", "0.0.0.0", "--port", "5000"]