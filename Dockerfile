FROM node

WORKDIR /app

EXPOSE 8080

COPY . .

RUN npm install

COPY techempower-nodejs-docker/run.sh .
RUN chmod +x run.sh

CMD ["./run.sh"]
