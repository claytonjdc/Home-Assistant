echo '{"command": "serverinfo"}' | nc -i 3 192.168.0.127 19444 | grep -vq '{"priority":0}'

# This is the part which switch calls in Node Red