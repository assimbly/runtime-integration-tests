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
    elif [ "$3" == "check" ]; then
      CHECK=true
    fi
fi


if [ "$PRINT_USAGE" = true ] ; then
    echo ""
    echo "Usage:"
    echo "test.sh testDir"
fi

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

# deploy dependable flows first.
if [ -e "$SOURCE_DIR/preconfig" ]
 then
   cp "$SOURCE_DIR"/preconfig/* "$DEPLOY_DIR"
   sleep 3
fi

cp "$SOURCE_DIR"/config/* "$DEPLOY_DIR"

echo ""
echo "Wait for deployment"
echo ""

sleep "$WAIT"

echo "Result:"
echo ""

if "$CHECK" = true; then
  rm -f "$SOURCE_DIR/actual/"*
  curl -k -X POST "https://localhost:9001/1/$COMPONENT" --output "$SOURCE_DIR/actual/output"
elif  "$CREATE" = true; then
  curl -k -X POST "https://localhost:9001/1/$COMPONENT" --output "$SOURCE_DIR/expected/output"
else
  curl -k -X POST "https://localhost:9001/1/$COMPONENT" --output -
fi

sleep "$WAIT"


rm "$DEPLOY_DIR/$COMPONENT"*

if "$CHECK" = true; then
  RESULT=$(diff -s -r "$SOURCE_DIR/actual" "$SOURCE_DIR/expected")
  echo
  echo "Result: $RESULT"
  if [[ "$RESULT" == .*"identical" ]]; then
    echo "Test failed"
  else
    echo "Test succeeded"
  fi
  echo

  echo "Finished"
else
  echo
  echo "Finished"
fi

