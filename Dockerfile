FROM node:21.6.0-alpine3.19

RUN wget -qO- https://github.com/elquimista/voip/archive/main.zip | unzip - && \
    mv voip-main app

WORKDIR /app

RUN npm i

CMD ["npm", "start"]

EXPOSE 3000
