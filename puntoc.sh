mkdir appHomeBanking
cd appHomeBanking
touch index.html
touch contacto.html
cd ..

nano dockerfile
docker login -u eze43
docker build -t eze43/2parcial-ayso:v1.0 .
docker image list
docker push eze43/2parcial-ayso:v1.0
docker run -d -p 8080:80 eze43/2parcial-ayso:v1.0
docker container ls

docker ps
docker stop a3d9efb2f6dc
