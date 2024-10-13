#!/bin/bash
check(){
  echo "$1"
  ycheck $1 silent
  if (( $? == 0 )); then
    echo "pass"
  else
    (echo "     - a: &analysisDate fakeDate"; cat $1)| ycheck pipe silent
    if (( $? == 0 )); then
      echo "pass"
    else
      echo "** error, try 'ycheck <file>' to see detailed error information"
    fi
  fi

}

destdir=$1
if [[ "destdir" == "" ]]; then
  echo "Usage: $0 destdir"
  exit 1
fi

find ${destdir} -name "*.yaml"  | while read -r file; do
  check $file
done
