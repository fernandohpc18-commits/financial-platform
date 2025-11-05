FROM node:18-alpine
WORKDIR /app
COPY frontend/package*.json ./
RUN npm ci
COPY frontend /app/frontend
WORKDIR /app/frontend
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
