echo "===Stop current docker container if there's any===" 
echo ""
docker stop ini-website > /dev/null 2>&1 
docker rm ini-website > /dev/null 2>&1
echo "===Building docker images==="
echo ""
docker build -t ini-web:latest . > /dev/null 2>&1
echo "===Running container==="
echo ""
docker run -p 80:80 --name ini-website -d ini-web > /dev/null 2>&1
sleep 5
echo "===Test access==="
echo ""
curl localhost:80