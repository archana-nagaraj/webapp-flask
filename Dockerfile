FROM python:3.7

# Create app directory
WORKDIR /webapp-flask

# Install app dependencies
COPY src/requirements.txt ./

RUN pip install -r requirements.txt

# Bundle app source
COPY src /webapp-flask

EXPOSE 5000
CMD [ "python", "helloworldpython.py" ]