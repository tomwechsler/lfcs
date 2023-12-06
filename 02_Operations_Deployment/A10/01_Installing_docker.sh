#Working on ubuntu in a root session

sudo -i

#Check the links (before docker is installed)
ip link show

#Update the metadata
apt update

#Install docker (do not forget .io)
apt install -y docker.io

#Check the status
systemctl status docker

#We have a new link
ip link show

#The docker version
docker --version

#Docker info
docker info

#Run the first container
docker run hello-world

#Docker info
docker info | head -n20

docker ps

docker ps -a

docker images