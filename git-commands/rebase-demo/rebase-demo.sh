""#!/bin/bash
# ============================================
# Git Rebase Demo Script
# This script demonstrates the basic usage of
# git rebase with conflict resolution.
# ============================================

# Step 1: Initialize a new Git repository
echo "Initializing a new Git repository..."
mkdir git-rebase-demo && cd git-rebase-demo
git init

# Step 2: Create the master branch with initial commit
echo "Creating initial commit on master branch..."
echo "Initial content for README" > README.md
git add README.md
git commit -m "Initial commit on master"

# Step 3: Create a new branch called 'feature'
echo "Creating 'feature' branch..."
git checkout -b feature

# Step 4: Make changes in the 'feature' branch
echo "Adding content to README in 'feature' branch..."
echo "This is the feature branch update." >> README.md
git add README.md
git commit -m "Update README from feature branch"

# Step 5: Switch back to master and make changes
echo "Switching back to master branch..."
git checkout master
echo "This is the master branch update." >> README.md
git add README.md
git commit -m "Update README from master branch"

# Step 6: Attempt to rebase 'feature' onto 'master'
echo "Attempting to rebase 'feature' onto 'master'..."
git checkout feature
git rebase master || echo "Rebase conflict detected!"

# Step 7: Resolve conflict (manual step, will pause script)
echo "Conflict detected. Resolve conflict in README.md, then run:"
echo "'git add README.md && git rebase --continue'"
echo "Or abort with 'git rebase --abort'"

# Step 8: Final message
echo "If you successfully rebased, you can now push your changes:"
echo "'git push origin feature'"
""

