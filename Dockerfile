FROM node

WORKDIR /app

RUN mkdir /db

COPY ./meetup/package*.json ./

RUN npm install

COPY ./meetup/ ./

EXPOSE 3003

CMD ["node","app.js"]
