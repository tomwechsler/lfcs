#Working on rocky

su - alice

exit

#Working on ubuntu2
su - alice #The prompt is different

exit

#Working on ubuntu1
sudo -i

#Display the details of the 'alice' user in the localhost 389 Directory Server instance
dsidm localhost user get alice

#Modify the 'alice' user in the localhost 389 Directory Server instance to add a login shell of /bin/bash
dsidm localhost user modify alice add:loginShell:/bin/bash

#Display the details of the 'alice' user in the localhost 389 Directory Server instance again to confirm the changes
dsidm localhost user get alice

#Restart the sssd service
systemctl restart sssd

#On Ubuntu2
su - alice