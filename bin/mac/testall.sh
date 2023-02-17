#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

start=`date +%s`
TOTALTIME=0
TOTAL=0
SUCCESSFUL=0
FAILED=0

echo
echo "Tests started"
echo

for entry in "$parent_path"/../../*
do
  if [ -d "${entry}" ]; then

      TEST=$(basename $entry)

      #ignore some folders as they don't have a http inbound
      if [ "$TEST" != "bin" ] && [ "$TEST" != "emailinbound" ]  && [ "$TEST" != "hl7inbound" ] && [ "$TEST" != "hl7outbound" ]; then
        echo
        echo "Running integration test: $TEST "
        RESULT=$(sh ./test_nohttp.sh "${TEST}"/$1 10 check)

        echo $RESULT

        let "TOTAL++"
        if [[ "$RESULT" == *"failed"* ]]; then
           let "FAILED++"
        else
           let "SUCCESSFUL++"
        fi
      fi
  fi
done

end=`date +%s`
SECONDS=$((end-start))
echo
echo "Tests finished"
echo "------------------------------------------------------------------------"
if [[ "$SECONDS" < 60 ]]; then
  echo "Total time: $(($SECONDS % 60)) seconds"
else
   echo "Total time: $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
fi
echo "Total tests: $TOTAL"
echo "Successful tests: $SUCCESSFUL"
echo "Failed tests: $FAILED"
echo "------------------------------------------------------------------------"



