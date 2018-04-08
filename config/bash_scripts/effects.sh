#!/usr/bin/env bash

echo '{ "command": "clearall"}' | nc 10.0.1.19 19444
echo "{\"effect\": {\"name\": \"$1\"}, \"command\": \"effect\", \"priority\": 100 }" | nc 10.0.1.19 19444
