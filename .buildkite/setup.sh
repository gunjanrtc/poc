#!/bin/bash

pwd
echo $(curl -s -H "Authorization: Bearer bkua_5b60deaf82f5775af82478873bab212805995acc" -X GET "https://api.buildkite.com/v2/organizations/rtctek/pipelines/slave-pipeline/builds") | jq '.[0].number'
