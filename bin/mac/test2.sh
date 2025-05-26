#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

#Set defaults
PRINT_USAGE=false
WAIT="10"
CHECK=false
CREATE=false


echo "Starting integration test"
echo ""

if [ -n "$1" ]; then
  echo "Module: $1";
else
  echo "Parameter testDir is empty."
  PRINT_USAGE=true
fi

if [ -n "$2" ]; then

  if [ "$2" == "create" ]; then
     CREATE=true
    mkdir -p "../../$1/actual"
    mkdir -p "../../$1/expected"
  elif [ "$2" == "check" ]; then
    CHECK=true
  else
    WAIT="$2"
    echo "Wait: $2""s";
  fi

else
  echo "Wait: 10s"
fi

if [ -n "$3" ]; then
    if [ "$3" == "create" ]; then
      CREATE=true
      mkdir -p "../../$1/actual"
      mkdir -p "../../$1/expected"
    elif [ "$3" == "check" ]; then
      CHECK=true
    fi
fi


if [ "$PRINT_USAGE" = true ] ; then
    echo ""
    echo "Usage:"
    echo "test.sh testDir"
fi

PROJECT_DIR="../../"
SOURCE_DIR="../../$1"
DEPLOY_DIR="$HOME/.assimbly/deploy/"
COMPONENT="${1%/*}"

echo ""

cd "$parent_path"

if [ -d "$SOURCE_DIR" ]
then
    echo "Source directory: $SOURCE_DIR"
else
    echo "Error: Source Directory $SOURCE_DIR does not exists."
    set -o errexit
fi

if [ -d "$DEPLOY_DIR" ]
then
    echo "Deploy Directory: $DEPLOY_DIR"
else
    echo "Error: Deploy Directory $DEPLOY_DIR does not exists."
    set -o errexit
fi

# cp "$SOURCE_DIR"/config/* "$DEPLOY_DIR"

cho "Result:"
echo ""

for d in /d/intellij/workspace/runtime-integration-tests/*/ ; do
     baseDir=$(basename "$d")
     echo "${baseDir}"
     input="@/d/intellij/workspace/runtime-integration-tests/${baseDir}/dil/config/${baseDir}_dil.xml"
     output="/d/intellij/workspace/runtime-integration-tests/${baseDir}/diljson/config/${baseDir}_dil.yaml"

     rm "$output"

     #curl -k -X POST "https://localhost:9001/1/$COMPONENT" -H "Content-Type: text/xml" --data "$input" --output "$output"
done

