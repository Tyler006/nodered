FROM nodered/node-red-docker

MAINTAINER Tyler.Nguyen@aero.org

ENV http_proxy http://29955:Sun@proxy-west.aero.org:8080
ENV https_proxy https://29955:Sun@proxy-west.aero.org:8080

RUN npm config set proxy http://29955:Sun@proxy-west.aero.org:8080
RUN npm config set proxys https://29955:Sun@proxy-west.aero.org:8080


#RUN npm install -g --unsafe-perm node-red
RUN npm install node-red-dashboard
#RUN npm i vim -g


RUN mkdir mydata

#WORKDIR /data

COPY plot_test.py mydata
COPY figure_test.py mydata
COPY append.py mydata
COPY sample.py mydata

Run mkdir dex-upload

COPy  customNode/dex-upload/dex-upload.html dex-upload
COPy  customNode/dex-upload/dex-upload.js dex-upload
COPy  customNode/dex-upload/package.json dex-upload

#RUN cd ~/.node-red
#RUN npm install dex-upload/node-red-contrib-dex-upload
#EXPOSE 1880
 
#CMD node-red




# docker build --rm=true --tag=node-red .
# docker run -p 2880:1880  -d  --name tylernode tylernode:latest
# docker run -it -p 2880:1880 -v ~/data:/root/.node-red --name mynodered node-red
