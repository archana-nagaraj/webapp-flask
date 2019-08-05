FROM python:3.7

# Create app directory
WORKDIR /webapp-flask
# Bundle app source
COPY  src ./src
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python", "./src/helloworldpython.py" ]