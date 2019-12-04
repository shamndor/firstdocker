FROM ubuntu:latest
RUN apt-get update
Run apt-get install nodejs
Run mkdir -p /user/src/app
copy ./myapp.js  /user/src/app
workdir /user/src/app
Expose 80
CMD ["node","myapp.js"]