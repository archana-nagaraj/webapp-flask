FROM ubuntu:16.04

MAINTANER Your Name "archana.nagaraj@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /hellopythonworld/requirements.txt

WORKDIR /hellopythonworld

RUN pip install -r requirements.txt

COPY . /hellopythonworld

ENTRYPOINT [ "python" ]

CMD [ "hellopythonworld.py" ]
