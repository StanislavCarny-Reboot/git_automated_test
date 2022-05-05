FROM python:3.9

RUN apt-get update -y && apt-get install -y make

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY test.py /test.py

# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["python3", "./test.py"]