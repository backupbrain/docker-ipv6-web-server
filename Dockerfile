FROM alpine:3.9
LABEL co.anode.vpn.image.authors="backupbrain@gmail.com"


# Create app directory
WORKDIR /server

# Install cjdns
# RUN apt-get update && apt-get install -y cjdns
RUN apk add --update nodejs nodejs-npm
COPY docker_scripts/entrypoint.sh /

# get cjdns config

# Install app dependencies
# A wildcard is used to ensure both package.json and package-lock.json are installed
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8099
CMD [ "/entrypoint.sh" ]

