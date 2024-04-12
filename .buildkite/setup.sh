#!/bin/bash
set -eo pipefail
run(){
  pwd
  curl -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" -X GET "https://api.buildkite.com/v2/organizations/rtctek/pipelines/slave-pipeline/builds")
  LATEST_BUILD_NUMBER=$(echo $BUILDS | jq '.[0].number')
  echo "Latest build number: $LATEST_BUILD_NUMBER"
  }
  if [[ "$1" == "run" ]]; then
    setup
fi
