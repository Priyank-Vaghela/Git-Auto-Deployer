echo Initializing Git Puller..
read -p "Enter Your Repository URL: "  repo
echo "Adding your Repo.. $repo!"
mkdir Pulled_code
cd Pulled_code
git init
git remote add origin $repo
git add .
git pull origin master
echo Your code is now Pulled in your System..:)
