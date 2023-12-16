#Working on ubuntu1

#Create a Python script that creates a file in the '/tmp' directory
sudo vim /usr/bin/file_test.py

#!/usr/bin/python3
FILE = '/tmp/mytextfile'
try:
  open(FILE,'a').close()
  print(f'Createdfile: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)
  
#Change the permissions of the Python script
sudo chmod755 /usr/bin/file_test.py

#Run the Python script
file_test.py

#Remove the file created by the Python script
rm /tmp/mytextfile