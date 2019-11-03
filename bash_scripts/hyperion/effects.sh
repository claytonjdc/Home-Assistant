echo '{ "command": "clearall"}' | nc 192.168.0.127 19444
echo "{\"effect\": {\"name\": \"$1\"}, \"command\": \"effect\", \"priority\": 100 }" | nc 192.168.0.127 19444

# This is the part which switch calls in Node Red