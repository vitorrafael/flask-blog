FROM alpine:latest

WORKDIR flaskblog

COPY flaskblog flaskblog
COPY requirements.txt .

RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python3-dev py-pip build-base zlib libjpeg-turbo-dev libpng-dev freetype-dev lcms2-dev libwebp-dev harfbuzz-dev fribidi-dev tcl-dev tk-dev\
  && python3 -m pip install --upgrade pip \
  && python3 -m pip install -r requirements.txt 

ENV PYTHONBUFFERED 1

EXPOSE 5000

ENV FLASK_APP=flaskblog
ENV SQLALCHEMY_DATABASE_URI=sqlite:///site.db

ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]
