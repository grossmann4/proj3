FROM python:3.9

WORKDIR /app

COPY app.py ./
COPY ./static ./static
COPY ./templates ./templates
COPY requirements.txt ./ 

RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]