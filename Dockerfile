FROM node:4.4.7

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5


RUN npm install gulp -g


ENV HOME=/home/app

COPY package.json npm-shrinkwrap.json $HOME/app/
RUN chown -R app:app $HOME/*

USER app
WORKDIR $HOME/app
RUN npm install


