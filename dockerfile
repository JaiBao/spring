# develop stage
FROM node:18-alpine as develop-stage
WORKDIR /app
COPY package*.json ./
RUN npm i -g @quasar/cli@latest
RUN npm i -g pm2@latest
COPY . .

# local-deps
FROM develop-stage as local-deps-stage
RUN yarn

# build stage
FROM local-deps-stage as build-stage
RUN quasar build -m ssr
EXPOSE  3000
CMD ["pm2-runtime", "dist/ssr/index.js"]
