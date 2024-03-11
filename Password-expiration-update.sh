## fixes V-204419 of RHEL-07-010240
#!/bin/bash

## This script updates the password expiration date for the user account below
## written by Andre Fankam

USER= "user_name_space_seprerated"
for user in $USER; do 
    chage -d $(date +%Y-%m-%d) $user
done
