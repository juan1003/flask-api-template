FROM python:3.11-alpine

WORKDIR /app

COPY venv ./

COPY requirements.txt ./

RUN source venv/bin/activate

RUN pip install -r requirements.txt

COPY . ./

CMD ["flask", "--app app", "run --debug"]
