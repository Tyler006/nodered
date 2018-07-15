FROM nodered/node-red-docker
MAINTAINER Tyler.Nguyen@aero.org

ENV http_proxy http://29955:Sun@proxy-west.aero.org:8080
ENV https_proxy https://29955:Sun@proxy-west.aero.org:8080

RUN npm install node-red-dashboard
