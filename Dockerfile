FROM python:3.10-buster

RUN pip install --upgrade pip

RUN mkdir /app
COPY . /app/
WORKDIR /app

ENV PYTHONPATH /app

RUN pip install -r requirements.txt

WORKDIR /app
USER nobody

ENTRYPOINT ["python", "-m", "uvicorn", "src.main.api_application:app", "--reload", "--host=0.0.0.0", "--port=8080"]
