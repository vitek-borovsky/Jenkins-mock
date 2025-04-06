FROM alpine:latest

WORKDIR /app

RUN apk add python

COPY hello.py /app/hello.py

ENTRYPOINT ["python", "hello.py" ]
