FROM node:latest

RUN mkdir background-geolocation-console
COPY . background-geolocation-console
WORKDIR background-geolocation-console
RUN npm install better-npm-run
RUN npm install

ENTRYPOINT npm run build && npm run start
