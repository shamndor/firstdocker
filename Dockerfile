FROM ubuntu:latest
RUN apt-get update
RUN apt-get install git-core curl build-essential openssl libssl-dev \
 && git clone https://github.com/nodejs/node.git \
 && cd node \
 && ./configure \
 && make \
 && sudo make install

Run apt-get install nodejs
Run mkdir -p /user/src/app
copy ./myapp.js  /user/src/app
workdir /user/src/app
Expose 80
CMD ["node","myapp.js"]