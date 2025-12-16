# 1. Base Image eka
FROM node:18-alpine

# 2. Container eka athule wada karana thana
WORKDIR /app

# 3. Server folder eke thiyena package.json eka copy karagannawa
# (Api eliye idan server folder eka athulata ebila balනවා)
COPY server/package*.json ./

# 4. Dependencies install karanawa
RUN npm install

# 5. Server folder eke thiyena anith okkoma files tika copy karanawa
COPY server/ .

# 6. Port eka open karanawa (Godak wita meka 5000 wenne)
EXPOSE 5000

# 7. Server eka start karanawa
CMD ["npm", "start"]