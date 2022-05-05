FROM python:3.9

RUN apt-get update -y && apt-get install -y make

RUN pip install -r requirements.txt

# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY test.py /test.py
COPY . /
# Code file to execute when the docker container starts up (`entrypoint.sh`)
CMD ["python3", "./test.py"]