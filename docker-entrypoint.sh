#!/usr/bin/env bash
#

# METEOR_SETTINGS=$(cat settings.json)
# ROOT_URL="https://<APPDOMAIN>"
# BIND_IP=<IPADDRESS>
# PORT=<PORT>
#
METEOR_SETTINGS="$(cat ./settings.json )"

printenv | sort

node ./bundle/main.js