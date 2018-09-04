git add .
git commit -am "Update $(git status | grep modified | sed 's/modified://' | tr -d "\n" | tr -d " ")"
git push origin dev
git status | grep modified
