FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/filestructure/filestructure/ /root/packages/filestructure/
WORKDIR /root/packages/filestructure
RUN pip3 install /root/packages/filestructure

CMD ["python3","test/filestructure.py"]


