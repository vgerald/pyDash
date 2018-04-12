#docker build -t dash3 .

FROM amazonlinux:latest

RUN yum update && \
    yum install -y software-properties-common build-essential python35 python35-virtualenv python35-pip  nano && \
    yum clean all

COPY . .

#RUN pip3 install --upgrade pip
CMD sh setupenv.sh
CMD pip3 install -r requirements.txt
EXPOSE 8050

#CMD ["bash"]
CMD gunicorn -w 10 -b 0.0.0.0:8050 -t 100000 --max-requests 20 app:server

CMD ["python3", "app.py"]

#docker run -it --name dash3 -p 8050:8050 dash3
