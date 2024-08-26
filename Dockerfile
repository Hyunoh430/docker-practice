FROM balenalib/raspberrypi4-64-ubuntu

RUN apt-get update && apt-get install -y python3 python3-pip
RUN apt-get install -y libgl1-mesa-glx libglib2.0-0

RUN pip install --upgrade pip
RUN pip install torch torchvision
RUN pip install ultralytics

WORKDIR /usr/src/app

COPY . .

CMD ["python3", "./best.py"]
