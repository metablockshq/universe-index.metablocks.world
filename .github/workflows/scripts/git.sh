#!/bin/bash

git_commit() {
    echo "running git commit command"
    git pull origin main
    git add .
    git config --global user.email "no-reply.github@metablocks.world"
    git config --global user.name "Github-bot"
    git config --global credential.helper cache
    if ! git diff-index --quiet HEAD; then
        git commit -m "Automated JSON addition"
        git push origin main
    fi 
}


git_commit

