#!/usr/bin/env bash

echo "{\"effect\": {\"name\": \"$1\"}, \"command\": \"effect\", \"priority\": 100 }" | nc 10.0.1.19 19444
