#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# commit the build
git init
git add -A
git commit -m 'deploy'

# push the build
git push -f git@github.com:bluehatbrit/mdpdf.git master:gh-pages

cd -