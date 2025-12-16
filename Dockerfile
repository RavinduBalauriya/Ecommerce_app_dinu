# 1. Base Image
FROM node:18-alpine

# 2. Working Directory
WORKDIR /app

# 3. Copy package.json from server folder
COPY server/package*.json ./

# 4. Install Dependencies
RUN npm install

# 5. Copy all server files
COPY server/ .

# 6. Set Database Connection (MENNA ALUTH KOTASA)
ENV MONGO_URI="mongodb+srv://ravindu:ravindu123@ecommerce.geytrzs.mongodb.net/ecommerce?appName=ecommerce"

# 7. Expose Port
EXPOSE 5000

# 8. Start Server
CMD ["npm", "start"]