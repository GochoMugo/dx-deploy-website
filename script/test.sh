#
# Runs tests
#


# we must stop on error
set -e


# we require utilities
source ./script/utils.sh


log "running tests with grunt" 0
grunt test


log "run tests with htmlproof" 0
htmlproof ./_site --href-ignore https://gochomugo.github.io
