echo "Stop current docker container if there's any..." 
docker stop ini-website && docker rm ini-website > /dev/null 2>&1
echo "Building docker images"
docker build -t ini-web:latest . > /dev/null 2>&1
echo "Running container"
docker run -p 80:80 --name ini-website -d ini-web > /dev/null 2>&1
sleep 5
echo "Test access"
curl localhost:80