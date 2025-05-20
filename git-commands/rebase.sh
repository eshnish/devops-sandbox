mkdir rebase
cd rebase
git init

#4 Commits in Master Branch
echo “Line 1” > Readme.md
git add Readme.md 
git commit -m “Master First Commit”
echo “Line 2” >> Readme.md
git add Readme.md
git commit -m “Master Second Commit”
echo “Line 3” >> Readme.md
git add Readme.md
git commit -m “Master Third Commit”
echo “Line 4” >> Readme.md
git add Readme.md
git commit -m “Master Fourth Commit”

#Check Commit History of Master
git log --oneline 

#Create feature branch and add one commit
git checkout -b feature HEAD~2
echo “One” >> Readme.md
git add Readme.md
git commit -m “feature first commit”

#Check Commit history of Feature
git log --online

#Rebase from feature branch
git rebase main

#This will result in conflict. Resolve the conflict and then add the file again before continuing rebase
git rebase --continue
