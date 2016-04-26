#!/usr/bin/env bash


echo "Moving content into docs folder"
mkdir -p "./docs/"
mv !(docs) docs

git clone https://$GITHUB_USER_NAME:$GITHUB_ACCESS_TOKEN@github.com/auth0/auth0-docs.git auth0-docs-repo

echo "Moving docs site into root folder"
shopt -s extglob dotglob
mv auth0-docs-repo/* .
#rmdir auth0-docs-repo
shopt -u dotglob

echo "Docs site successfully setup."