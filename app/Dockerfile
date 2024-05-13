FROM node:20-alpine3.18

WORKDIR /code

COPY package.json package-lock.json index.js /code/

RUN npm cache clean --force && npm install --ignore-engines

EXPOSE 3000

CMD ["npm", "start"]
