FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.9n5qmpv.mongodb.net
ENV MONGODB_USERNAME ChrlsChrstn
ENV MONGODB_PASSWORD CLF8buG59gOm6ff5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]