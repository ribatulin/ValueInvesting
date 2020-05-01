FROM python:3.6.10-slim-buster

RUN mkdir /app
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./ .

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app.server"]