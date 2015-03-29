#
# Push to Master
#


# we must stop on error
set -e


# we require utilities
source ./script/utils.sh


# variables
GH_URL="https://github.com/GochoMugo/dx-deploy-website.git"


log "cloning this repo afresh" 0
git clone "${GH_URL}" _out


log "getting into repo and switching branch to gh-pages" 0
cd _out
git checkout gh-pages


log "removing all current files" 0
git rm -rf *


log "copying jekyll output to gh-pages branch" 0
cp -r ../_site/* .


log "configuring and committing changes" 0
git config user.email "mugo@forfuture.co.ke"
git config user.name "travis-ci-bot"
git add -A .
git commit -a -m "Build ${TRAVIS_BUILD_NUMBER}"


log "adding authentication key" 0
echo -e "machine github.com\n  login mugo@forfuture.co.ke\n  password ${GH_TOKEN}" >> ~/.netrc


log "pushing to master" 0
git push origin master \
  && log "successfully pushed to master" 1 \
  || log "failed to push to master" 2

