echo Initializing Git Puller..
read -p "Enter Your Repository Name: "  name_repo
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo..."
mkdir $name_repo
cd $name_repo
git init
git remote add origin $repo
git add .
git pull origin master --force
echo Your code is successfully pulled in your System.
