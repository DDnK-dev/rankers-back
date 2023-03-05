FROM python:3.10-buster

RUN pip install --upgrade pip

RUN mkdir /app
WORKDIR /app
ENV PYTHONPATH /app

COPY /app /app/
COPY requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

USER nobody
ENTRYPOINT ["python", "-m", "uvicorn", "main:app", "--reload", "--host=0.0.0.0", "--port=8080"]
