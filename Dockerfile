#sudo docker build -t mydash .

FROM amazonlinux:latest

RUN yum update && \
    yum install -y software-properties-common build-essential python35 python35-virtualenv python35-pip  nano && \
    yum clean all

COPY . .

RUN python35 -m pip install --upgrade pip
#CMD sh setupenv.sh
CMD pip install -r requirements.txt
EXPOSE 8050

#CMD ["bash"]
CMD gunicorn -w 10 -b 0.0.0.0:8050 -t 100000 --max-requests 20 app:server
CMD ["source", "testDash/bin/activate"]
#CMD ["python", "app.py"]

#sudo docker run -it --name mydash -p 8050:8050 mydash


