FROM node

WORKDIR /app

COPY ./meetup/package*.json ./

RUN npm install

COPY ./meetup/ ./

EXPOSE 3003

VOLUME "/db"

CMD ["node","app.js"]
