#! /bin/bash

# get script and docker directory
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPTS_DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
DOCKER_DIR="$(dirname $SCRIPTS_DIR)"

# use the yyyymmdd timestamp as the tag
export T3_DB_TAG=$(date "+%Y%m%d")

# build the image
docker build -t triticeaetoolbox/breedbase_database:$T3_DB_TAG "$DOCKER_DIR"
docker tag triticeaetoolbox/breedbase_database:$T3_DB_TAG triticeaetoolbox/breedbase_database:latest