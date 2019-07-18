FROM python:alpine
WORKDIR /
COPY app.py /app.py
RUN pip install flask
