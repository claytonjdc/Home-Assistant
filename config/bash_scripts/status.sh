#!/usr/bin/env bash

echo '{"command": "serverinfo"}' | nc -i 1 10.0.1.19 19444 | grep -vq '{"priority":0}'
