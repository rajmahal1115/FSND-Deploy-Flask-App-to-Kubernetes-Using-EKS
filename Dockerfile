FROM python:stretch
WORKDIR /app
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app/
ENTRYPOINT gunicorn -b :8080 main:APP

