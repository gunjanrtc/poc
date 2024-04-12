#!/bin/bash

pwd
BUILDS=$(curl -s -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" -X GET "https://api.buildkite.com/v2/organizations/rtctek/pipelines/slave-pipeline/builds")
LATEST_BUILD_NUMBER=$(echo $BUILDS | jq '.[0].number')
echo "Latest build number: $LATEST_BUILD_NUMBER"
curl -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" "https://api.buildkite.com/v2/organizations/rtctek/pipelines/slave-pipeline/builds/$LATEST_BUILD_NUMBER"> data.json
unblock_url=$(jq -r '.jobs[3].unblock_url' data.json)
echo "$unblock_url"
curl -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" -X PUT "$unblock_url" -H "Content-Type: application/json" -d '{"fields": {"name": "gunjan"}}'
