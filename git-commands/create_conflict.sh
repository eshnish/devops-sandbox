#Create new branch
git checkout -b feature

#Modify README.md on feature branch
echo "Feature File" > README.md

git add README.md
git commit -m "Changes from feature branch"

git checkout master
echo "Edited README.md content" > README.md
git add README.md
git commit -m "New Changes in Master"

git merge feature
