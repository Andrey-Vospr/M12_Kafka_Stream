FROM python:3.9

ADD src/main.py /app/main.py
ADD requirements.txt /app/requirements.txt
WORKDIR /app

RUN apt-get update && apt-get install -y \
    gcc

RUN pip3 install -r requirements.txt

ENTRYPOINT ["faust","-A","main","worker","-l","info"]
