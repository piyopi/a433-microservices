FROM node:14

WORKDIR /app

COPY . .

RUN npm install

RUN wget -O ./wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x ./wait-for-it.sh

EXPOSE 3000

CMD ["node", "index.js"]