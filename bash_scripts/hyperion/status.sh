#!/usr/bin/env bash

echo '{"command": "serverinfo"}' | nc -i 3 192.168.0.127 19444 | grep -vq '{"priority":0}'
