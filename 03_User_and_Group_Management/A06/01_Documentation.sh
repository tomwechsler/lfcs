#PAM allows modules to be loaded for authentication, account management, and session management.

#PAM Types

Auth #Modules execute during authentication

Account #Modules execute after authentication checking for account restrictions, such as password expiration, and account expiration

Password #Modules execute when a user changes their password

Session #Modules execute before a serivce is presented to a user but after other restrictions have been passed. Home directory creation is an example.

#PAM Control

Required #Modules must return success, but other modules are run no matter

Requisite #As above but other modules are not run if this module fails

Sufficient #If this module returns success, no other modules are run

Optional #The success or failure of this module is not important unless it is the only module executed