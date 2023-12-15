#Working on unbuntu1

#Create a new file called 'pwgen.sh' in the current directory
vim pwgen.sh

#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
  read -sp 'Enter a new password: '
  echo
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ] ; then
    PWD_OK="true"
    echo "$PASSWORD"
  fi
done

#Change the permissions of the 'pwgen.sh'
chmod -v a+x pwgen.sh

#Execute the 'pwgen.sh' script
./pwgen.sh