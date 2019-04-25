#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

sudo git init
#sudo git checkout master
sudo git add .
sudo git commit -m 'deploy'
sudo git remote add origin https://github.com/jagelvisR/jagelvisR.github.io.git
# if you are deploying to https://jagelvisR.github.io
#git push -f git@github.com:jagelvisR/jagelvisR.github.io.git master

# if you are deploying to https://jagelvisR.github.io/jagelvisR.github.io
#git push -f git@github.com:jasgelvisR/jagelvisR.github.io.git master:gh-pages
sudo git push -u origin master --force
cd -