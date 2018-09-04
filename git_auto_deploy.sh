echo Initializing Git auto deployer..
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo.. $repo!"
git init
git remote remove origin
git remote add origin $repo
git add .
git commit -am "Update $(git status | grep modified | sed 's/modified://g' | sed 's/ //g' | tr -d "\n")"
git push origin master
git status | grep modified
