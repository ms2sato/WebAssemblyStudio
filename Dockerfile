FROM node:9.11
ADD . /was
RUN  apt-get update -y  && \
     cd /was && \
     npm install -g && npm install webpack -g && \
     npm install && npm install --only=dev && \
     npm run build && npm run build-watch

WORKDIR /was
CMD ["npm", "run", "dev-server"]