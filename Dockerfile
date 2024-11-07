FROM node:20

WORKDIR /app

COPY package.* .
COPY ./prisma* .

RUN npm i
RUN npx prisma generate

COPY . .

RUN npm run build

# just a informational hint
EXPOSE 3000

# runs after the building of contaier is finished i.e. when contaier starts.
CMD ["node","dist/index.js"]