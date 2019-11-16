FROM python:3.6-stretch

WORKDIR /app
COPY . /app/

RUN apt-get update \
 && apt-get install -y libgsl2 libmpfr4 \
 && dpkg -i *.deb \
 && /usr/local/bin/pip3 install -r requirements.txt

ENTRYPOINT ["/usr/local/bin/python", "/app/prediction_util.py"]
ARG [] 
