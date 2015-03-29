#
# Starts Jekyll with environment variables set
#


# requiring utilities
source ./script/utils.sh


log "cleaning _site" 0
rm -rf _site/


log "building (+watching) with jekyll" 0
JEKYLL_ENV="development" \
  jekyll serve
