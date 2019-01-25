FROM python:2.7
ADD . /test
WORKDIR /test
EXPOSE 5000
RUN apt-get update && apt-get upgrade -y 
RUN pip install flask_sqlalchemy
RUN pip install flask_wtf
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "main.py"]
