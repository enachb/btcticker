FROM balenalib/raspberrypi4-64-debian-python

WORKDIR /usr/src/app

RUN apt-get update
RUN apt-get install -y mc git libopenjp2-7 gcc build-essential
RUN apt-get install -y libatlas-base-dev python-pil

COPY . /usr/src/app

RUN pip install -r requirements.txt
RUN pip install spidev

CMD ["python", "/usr/src/app/btcticker.py"]
