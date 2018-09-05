sudo echo Initializing Git auto deployer..
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo..."
git init
git remote remove origin
git remote add origin $repo
git add .
git commit -am "Update $(git status | grep modified | sed 's/modified://g' | sed 's/ //g' | tr -d "\n")"
git config --global credential.helper store
git pull origin master
echo "Now use git.sh for Instant Code Deployment with auto commits & comments"