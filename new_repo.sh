#!/bin/bash
USERNAME=''
PASSWORD=''
MY_ACCESS_TOKEN=''
echo "Hi! What do you want to call your new repository?"
read REPO_NAME
echo "Nice! New repo $REPO_NAME created! And now what about the description?"
read DESCRIPTION
# DEPRECATED SINCE November 13, 2020 at 16:00 UTC 
# curl -u ${USERNAME}:${PASSWORD} https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"private\": false, \"description\": \"${DESCRIPTION}\"}"

curl -H "Authorization: token $MY_ACCESS_TOKEN" https://api.github.com/user/repos -d "{\"name\": \"${REPO_NAME}\", \"private\": false, \"description\": \"${DESCRIPTION}\"}"
echo "Done!. Go to https://github.com/$USERNAME/$REPO_NAME to see." 

# git init
# git add -A
# git commit -m "v1"
# git remote add origin https://github.com/$USERNAME/$REPO_NAME.git
# git push -u origin master
