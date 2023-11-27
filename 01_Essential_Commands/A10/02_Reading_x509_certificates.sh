#Working on ubuntu1

#List the contents of the current directory
ls

#Display the details of the certificate in human-readable format
openssl x509 -in certificate.crt -noout -text

#Establish a SSL/TLS connection to google.ch on port 443 and display the server certificate
openssl s_client -connect google.ch:443

#Terminate the previous command
ctrl+c

#Establish a SSL/TLS connection to google.ch on port 443 and display the full certificate chain
openssl s_client -connect google.ch:443 -showcerts

#Establish a SSL/TLS connection to google.ch on port 443 and display the debugging information
openssl s_client -connect google.ch:443 -debug

#Terminate the previous command
ctrl+c