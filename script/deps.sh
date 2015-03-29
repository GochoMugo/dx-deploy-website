#
# Installs dependencies to be used in testing the build
#


# we must stop on error
set -e


# we require utilities
source script/utils.sh


log "Node $(node --version)" 1
log "Npm $(npm --version)" 1


log "installing grunt-cli" 0
npm install -g grunt-cli
log "$(grunt --version)" 1


log "installing dependencies from package.json" 0
npm install


log "$(ruby --version)" 1


log "installing jekyll" 0
gem install jekyll
log "$(jekyll --version)" 1


log "installing html proofer" 0
gem install html-proofer
