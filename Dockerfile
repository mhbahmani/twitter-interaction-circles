FROM python:3.6.8-alpine

WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . /usr/src/app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["run.py"]
