FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install -r requirements.txt

COPY app.py /opt

WORKDIR /opt

EXPOSE 8080

USER 1001

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
