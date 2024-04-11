#!/bin/bash
set -eo pipefail

run(){
  pwd
  curl -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" -X GET "https://api.buildkite.com/v2/organizations/rtctek/pipelines/master-testing-pipeline/builds/$BUILDKITE_BUILD_NUMBER" > master.json 
  slaveBuild= $(jq '.jobs[1].triggered_build.number' master.json)
  echo $BUILDKITE_BUILD_NUMBER
  echo $slaveBuild
}

if [[ "$1" == "run" ]]; then
    run
fi
