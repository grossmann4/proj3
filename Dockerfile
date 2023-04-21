FROM python:3.9

WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=localhost

COPY app.py ./
COPY ./static ./static
COPY ./templates ./templates
COPY requirements.txt ./ 

RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run"]