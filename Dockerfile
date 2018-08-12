FROM node:8

VOLUME ["/secrets"]
VOLUME ["/data"]

WORKDIR /data

RUN npm install -g dat

COPY bootstrap.sh /bootstrap.sh

RUN chmod +x /bootstrap.sh

EXPOSE 3282

CMD [ "/bootstrap.sh" ]