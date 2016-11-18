# techempower-nodejs-docker

## Server
```
git clone https://github.com/TechEmpower/FrameworkBenchmarks
cd FrameworkBenchmarks/frameworks/JavaScript/nodejs
git submodule add https://github.com/mikeharder/techempower-nodejs-docker
docker build -t techempower-nodejs -f techempower-nodejs-docker/Dockerfile .
docker run -it --rm -p 8080:8080 -e DBHOST=db-name-or-ip techempower-nodejs
```

## Client
```
wrk -c 256 -t 32 -d 10 http://server-name-or-ip:8080/sequelize-pg/fortunes
```
