#!/bin/sh

set -e

echo "ENVIRONMENT: $RAILS_ENV"

# check bundle
bundle check || bundle install

# remove any existing PID
rm -f  $APP_PATH/tmp/pids/server.pid

# run anythin by prepending bundle exec to the passed command
bundle exec ${@}