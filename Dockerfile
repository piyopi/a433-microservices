FROM node:14 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY index.js ./

RUN wget -O ./wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

EXPOSE 3001

ENV PORT=3001
ENV AMQP_URL="amqp://guest:guest@localhost:5672"


