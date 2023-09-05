FROM node
WORKDIR /app
COPY prisma ./prisma/
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn build
EXPOSE 3000
CMD ["yarn", "start"]