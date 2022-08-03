FROM alpine
RUN apk add --update nodejs npm
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 5000
CMD ["npm", "start"]

# docker build -t example .
# docker run -dp 5000 -t example example