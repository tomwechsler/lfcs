#Working on unbuntu1

#Open the script in vim
vim pwgen.sh

#!/bin/bash
PWD_OK="false"
while [ "$PWD_OK" != "true" ] ; do
  if [[ $# -ne 1 ]]; then
    read -sp 'Enter a new password: '
    echo
  else
    REPLY="$1"
  fi
  PWD_LEN=$(echo -n "$REPLY" | wc -m)
  PASSWORD=$(openssl passwd -6 "$REPLY")
  if [ "$PWD_LEN" -gt 6 ] ; then
    PWD_OK="true"
    echo "$PASSWORD"
  else
    echo "Password too short"
    exit 1
  fi
done

#Run the script with no arguments and a password shorter than 6 characters
./pwgen.sh

#Show the exit code of the script
echo $?

#Run the script with no arguments and a password longer than 6 characters
./pwgen.sh Password123?

#Show the exit code of the script
echo $?