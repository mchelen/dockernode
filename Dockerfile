FROM node:4.4.7

RUN npm install gulp -g

WORKDIR /src
RUN npm install
EXPOSE 3000

CMD ["gulp", "start"]
