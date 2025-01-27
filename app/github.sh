# Pull from github
# update the dockerhub image push 
# compose and build 
# run the docker container/restart containers

cd /Users/julia.clegg/Dockerdemo
git pull origin master
docker build -t constancevielma/myflaskapp
docker push constancevielma/myflaskapp
docker-compose down
docker compose up -d