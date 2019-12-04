FROM ubuntu:latest
Run apt-get update && add nodejs
Run mkdir -p /user/src/app
copy ./myapp.js  /user/src/app
workdir /user/src/app
Expose 80
CMD ["node","myapp.js"]