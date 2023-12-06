#Working on ubuntu

#Container with nginx
docker run -d --name web nginx

#Search for the ip
docker inspect -f "{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}" web

#The nginx default page
curl <ip address>

#Cleanup
docker container rm -f web

#Create a working directory
mkdir web

echo hello > web/index.html

#Create a new container (-v Volume mapping; -p port mapping)
docker run -d --name web -p 8000:80 -v /home/vagrant/web/:/usr/share/nginx/html/ nginx

curl localhost:8000