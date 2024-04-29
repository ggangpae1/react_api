FROM node:alpine
# 경로 설정하기
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install
COPY . .

CMD ["npm", "start"]