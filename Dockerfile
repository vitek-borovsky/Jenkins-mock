FROM ubuntu:latest

WORKDIR /app

COPY hello.py /app/hello.py

ENTRYPOINT ["python", "hello.py" ]
