FROM ubuntu

WORKDIR /app

COPY app.py ./
COPY ./static ./static
COPY ./templates ./templates
COPY requirements.txt ./ 

RUN apt-get update
RUN apt install -y python3-pip
RUN pip3 install -r requirements.txt

CMD python3 app.py
