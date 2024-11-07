FROM node:20

WORKDIR /app

COPY . .

RUN npm i 
RUN npm run build
RUN npx prisma generate

# just a informational hint
EXPOSE 3000

# runs after the building of contaier is finished i.e. when contaier starts.
CMD ["node","dist/index.js"]