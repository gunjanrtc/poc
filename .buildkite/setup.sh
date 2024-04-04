#!/bin/bash
set -eo pipefail

export SLAVE_PIPELINE_ORG="rtctek"
echo $SLAVE_PIPELINE_ORG
export SLAVE_PIPELINE="gunjan-test-pipeline"
echo $SLAVE_PIPELINE
export BUILDKITE_API_TOKEN="bkua_5b60deaf82f5775af82478873bab212805995acc"
echo $BUILDKITE_API_TOKEN
export BUILDKITE_API_URL="https://api.buildkite.com/v2"
echo $BUILDKITE_API_URL
