#!/bin/bash


cd universe-index.metablocks.world
rm  -f universe.devnet.json
rm  -f last.crawled.devnet.json 
git add .
git config --global user.email "no-reply.github@metablocks.world"
git config --global user.name "Github-bot"
git config --global credential.helper cache
if ! git diff-index --quiet HEAD; then
    git commit -m "Automated JSON Removal Commit"
    git push origin main
fi 

mv ../output/universe.devnet.json .
mv ../output/last.crawled.devnet.json .

git add .
if ! git diff-index --quiet HEAD; then
    git commit -m "Automated JSON Addition Commit"
    git push origin main
fi

# commit_data() {

# }

# commit_data