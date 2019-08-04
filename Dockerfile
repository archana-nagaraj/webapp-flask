FROM python:3.7

# Create app directory
WORKDIR /webapp-flask

# Install app dependencies
COPY ./requirements.txt /src

RUN pip install -r requirements.txt

# Bundle app source
COPY  ./webapp-flask

EXPOSE 5000
CMD [ "python", "helloworldpython.py" ]