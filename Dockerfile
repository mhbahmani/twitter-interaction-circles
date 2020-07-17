FROM ubuntu:latest

WORKDIR /usr/src/app

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["run.py"]
