#Working on ubuntu1

#Update the package lists for upgrades and new package installations
sudo apt update

#Install OpenSSL, a robust, full-featured open-source toolkit implementing the Secure Sockets Layer (SSL) and Transport Layer Security (TLS) protocols
sudo apt install -y openssl

#Generate a new private key using RSA algorithm
openssl genpkey -algorithm RSA -out private.key

#Generate a new Certificate Signing Request (CSR) using the private key (Common Name should be set to www.example.com)
openssl req -new -key private.key -out csr.pem #(Common Name:www.example.com)

#List the contents of the current directory
ls

#Copy the openssl configuration file from the specified path to the current directory
cp lfcs/01_Essential_Commands/A10/openssl.cnf .

#Display the content of the copied openssl configuration file
cat openssl.cnf

#Generate a new CSR using the private key and the openssl configuration file
openssl req -new -key private.key -out csr.pem -config openssl.cnf

#Copy the v3.ext file from the specified path to the current directory
cp lfcs/01_Essential_Commands/A10/v3.ext .

#Display the content of the copied v3.ext file
cat v3.ext

#Generate a new self-signed certificate using the CSR, private key, and v3.ext file, valid for 3650 days
openssl x509 -req -in csr.pem -signkey private.key -out certificate.crt -days 3650 -sha256 -extfile v3.ext

#List the contents of the current directory again to confirm the changes
ls