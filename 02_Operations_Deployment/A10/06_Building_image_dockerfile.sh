#Working on ubuntu

#Change into web (does not really matter)
cd web

ls

#Create the Dockerfile (capital D)
vim Dockerfile

FROM ubuntu
RUN apt-get update && apt-get install -y nginx
EXPOSE 80/tcp
ADD index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]

#Save and exit

ls

#Build the image (do not forget the . at the end)
docker build -t myweb .

#Cleanup
docker container rm -f web

#Create a new container
docker run -d -p 8000:80 --name web myweb

curl localhost:8000

#The images
docker image ls

docker container ls

#Cleanup
docker image prune -a -f

docker image ls