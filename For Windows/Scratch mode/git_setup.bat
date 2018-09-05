sudo echo Initializing Git Auto Deployer..
read -p "Enter Your Repository Name: "  name_repo
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo..."
mkdir $name_repo
cd $name_repo
echo "# $name_repo - $repo" >> README2.md
git init
git remote remove origin
git remote add origin $repo
git pull origin master
git add .
git commit -am "Update $(git status | grep modified | sed 's/modified://g' | sed 's/ //g' | tr -d "\n")"
git config --global credential.helper store
git push origin master
echo "Now use git.sh for Instant Code Deployment with auto commits & comments"