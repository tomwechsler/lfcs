#Working on ubuntu

#List all commands starting with 'ldap'
ldap TABTAB

#Perform an LDAP search on the 'dc=example,dc=com' base DN using the 'cn=Directory Manager' DN for authentication
ldapsearch -H ldap://ubuntu1:389 -D 'cn=Directory Manager' -W -b 'dc=example,dc=com' -x

#Perform an LDAP search on the 'dc=example,dc=com' base DN using the 'cn=Directory Manager' DN for authentication over LDAPS
ldapsearch -H ldaps://ubuntu1:636 -D 'cn=Directory Manager' -W -b 'dc=example,dc=com' -x #This command will fail

#Switch to the root user
sudo -i

#Append 'TLS_REQCERT never' to the end of the /etc/ldap/ldap.conf file
echo 'TLS_REQCERT never' >> /etc/ldap/ldap.conf

#Display the content of the /etc/ldap/ldap.conf file
cat /etc/ldap/ldap.conf

#Exit the current shell
exit

#Perform an LDAP search on the 'dc=example,dc=com' base DN using the 'cn=Directory Manager' DN for authentication over LDAPS again
ldapsearch -H ldaps://ubuntu1:636 -D 'cn=Directory Manager' -W -b 'dc=example,dc=com' -x

#Open the .dsrc file in the vim text editor
vim .dsrc

#List the users in the localhost 389 Directory Server instance
dsidm localhost user list

#List the groups in the localhost 389 Directory Server instance
dsdim localhost group list

#Create a new user named 'Alice Smith' in the localhost 389 Directory Server instance
dsidm localhost user create --uid alice --cn "Alice Smith" --uidNumber 2000 --gidNumber 100 --display-name "Alice Smith" --homeDirectory /home/alice

#List the users in the localhost 389 Directory Server instance again to confirm the changes
dsidm localhost user list

#Reset the password of the 'alice' user in the localhost 389 Directory Server instance
dsidm localhost account reset_password "uid=alice,ou=people,dc=example,dc=com"