FROM python:3.7

# Create app directory
WORKDIR /webapp-flask
# Bundle app source
COPY  src ./src
RUN pip install -r ./src/requirements.txt
EXPOSE 5050
ENTRYPOINT [ "python" ]
CMD [ "./src/hellopythonworld.py" ]