FROM python:3.9

WORKDIR /usr/src/app


COPY . .

CMD ["python", "test.py"]
