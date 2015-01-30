FROM google/nodejs

WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app

WORKDIR /work
ENTRYPOINT ["/app/revelry.js"]

