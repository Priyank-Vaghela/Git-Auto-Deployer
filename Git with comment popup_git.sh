echo Initializing Git auto deployer..
git add .
read -p "Enter Comment: "  comment
git commit -m "$comment"
git push origin master
