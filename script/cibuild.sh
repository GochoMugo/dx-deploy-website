#
# Builds the Site
#


# we must stop on error
set -e


# we require utilities
source script/utils.sh


# script variables
LOG_TITLE="ci-build"


# build
log "building site to _site/" 0
jekyll build

