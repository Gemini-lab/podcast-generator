#1/bin/bash

echo "================="\

git config --global user.name "A{GITHUB_ACTOR}" 
git config --global user.email "A{INPUT_EMIAL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "================="\

