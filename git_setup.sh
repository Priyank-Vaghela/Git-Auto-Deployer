echo Initializing Git auto deployer..
read -p "Enter Your Repository Name: "  name_repo
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo.. $repo!"
mkdir $name_repo
cd $name_repo
git init
git remote remove origin
git remote add origin $repo
git add .
git commit -am "Update $(git status | grep modified | sed 's/modified://g' | sed 's/ //g' | tr -d "\n")"
git config --global credential.helper store
git push origin master
echo Your code is deployed successfully.
