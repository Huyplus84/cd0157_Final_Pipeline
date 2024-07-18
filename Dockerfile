# Use the `python:3.7` as a source image from the Amazon ECR Public Gallery
# We are not using `python:3.7.2-slim` from Dockerhub because it has put a  pull rate limit. 
FROM --platform=linux/amd64 python:3.8-slim-buster As build

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask


ENTRYPOINT ["python", "app.py"]

