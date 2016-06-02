#!/bin/sh

set -e -x

SCRIPTPATH=$( cd $(dirname $0) ; pwd -P )

ENV=$1
if [ -z "$ENV" ]; then
  (>&2 echo "Environment not set. Usage:\n\n\t./generate.sh <environment>\n")
  exit 1
fi

SECRETS=$SCRIPTPATH/secrets.$ENV.yml
MANIFEST=$SCRIPTPATH/manifest.$ENV.yml
if [ ! -z "$2" ]; then
  MANIFEST=$2
fi

spiff merge \
  $SCRIPTPATH/deployment.yml \
  $SCRIPTPATH/jobs-$ENV.yml \
  $SCRIPTPATH/services.yml \
  $SECRETS \
  > $MANIFEST

echo "Created $MANIFEST."
