docker build -t ini-web .
docker run -p 80:80 --name ini-website -d ini-web
sleep 5
curl localhost:80