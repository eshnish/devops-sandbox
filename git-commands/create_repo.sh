mkdir git-repo
cd git-repo

#initialise git
git init

#Make a commit
echo "Master File" > README.md

git add README.md

git commit -m "Master 1st commit"

#Push it in your repo
git remote add origin https://github.com/<your-username>/demo-repo.git
git push -u origin master

