#
# Installs dependencies to be used in testing the build
#


# we must stop on error
set -e


# we require utilities
source ./script/utils.sh


#log "installing nvm" 0
#if [ ! $(command -v nvm > /dev/null 2>&1) ] ; then
#  rm -rf ~/.nvm
#  curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
#  source ~/.bashrc
#  source ~/.profile
#fi
#nvm --version


#log "installing node v0.12.0" 0
#nvm install v0.12.0
#nvm use v0.12.0
log "Node $(node --version)" 1
log "Npm $(npm --version)" 1


log "installing grunt-cli" 0
npm install -g grunt-cli
grunt --version


log "installing dependencies from package.json" 0
npm install


#log "installing rvm" 0
#command -v rvm > /dev/null 2>&1 || curl -L get.rvm.io | bash -s stable
#rvm version


#log "installing ruby v1.9.3" 0
#rvm install 1.9.3
#rvm use 1.9.3
ruby --version


log "installing jekyll" 0
gem install jekyll
jekyll --version


log "installing html proofer" 0
gem install html-proofer
