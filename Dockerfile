FROM python:3.7
MAINTAINER himanshu "himanshupan55@gmail.com"
RUN apt-get update -y && apt-get install -y python-pip python-dev
RUN apt-get update ##[edited]
RUN apt-get install ffmpeg libsm6 libxext6  -y 
RUN pip install -U pip
COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt
WORKDIR /app
COPY . /app
EXPOSE 8080
ENTRYPOINT ["python"]
CMD [ "app.py" ]


