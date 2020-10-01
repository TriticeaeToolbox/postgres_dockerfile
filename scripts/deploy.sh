#!/bin/bash

# get script directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPTS_DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

# Get tag
T3_DB_TAG=$(cat "$SCRIPTS_DIR/.tag")

# push the image to docker hub
docker push triticeaetoolbox/breedbase_database:$T3_DB_TAG
docker push triticeaetoolbox/breedbase_database:latest