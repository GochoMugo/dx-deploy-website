#
# Builds the Site
#


# we must stop on error
set -e


# we require utilities
source ./script/utils.sh


# build
log "building site" 0
jekyll build
