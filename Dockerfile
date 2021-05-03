FROM ubuntu:20.04
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app
RUN pip install -r requirements.txt 
CMD python app.py

