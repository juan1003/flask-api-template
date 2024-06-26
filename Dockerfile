FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . ./

ENV FLASK_APP=app.py

EXPOSE 5000

CMD ["flask", "run"]
