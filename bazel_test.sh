#!/bin/bash

set -x

BUILD_EVENTS_JSON="$(pwd)/blah.json"

bazel test \
    --nocache_test_results \
    --apple_platform_type=ios \
    --build_event_json_file="$BUILD_EVENTS_JSON" \
    //Modules/...

python parse_build_events.py "$BUILD_EVENTS_JSON"

rm "$BUILD_EVENTS_JSON"

