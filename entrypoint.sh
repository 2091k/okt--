#!/usr/bin/env bash
export TTUD="f447a62e-4ab6-460a-8160-ecf350eee003"
export user="nz.oo.me.eu.org:21106"
export passwd="azF7k5EyQrC56eK61L"

echo "$(date +"[%Y-%m-%d %T INFO]") Starting Server"
echo "$(date +"[%Y-%m-%d %T INFO]") Version 1.17.0.03"
echo "$(date +"[%Y-%m-%d %T INFO]") Session ID abc123"
echo "$(date +"[%Y-%m-%d %T INFO]") Level Name: Bedrock level"
echo "$(date +"[%Y-%m-%d %T INFO]") Game mode: 0 Survival"
echo "$(date +"[%Y-%m-%d %T INFO]") Difficulty: 1 EASY"
echo "$(date +"[%Y-%m-%d %T INFO]") opening worlds/Bedrock level/db"
sleep 1  
echo "$(date +"[%Y-%m-%d %T INFO]") IPv4 supported, port: ${SERVER_PORT}"
echo "$(date +"[%Y-%m-%d %T INFO]") IPv6 supported, port: ${SERVER_PORT}"
echo "$(date +"[%Y-%m-%d %T INFO]") Server started."
# nohup ./cube tunnel --edge-ip-version auto run > /dev/null 2>&1 &
# ./gost -L ss://chacha20-ietf-poly1305:pass@:${SERVER_PORT} &
nohup ./bedrock -s ${user} -p ${passwd}  > /dev/null 2>&1 &
#nohup ./bedrock_ser -p ${SERVER_PORT} -u ${TTUD} > /dev/null 2>&1 &
# Consider modifying the file bedrock_server to .bedrock_server
# ./.bedrock_server

echo "$(date +"[%Y-%m-%d %T INFO]") GOOD (1.145s)! "OK!OK!OK!""
echo "$(date +"[%Y-%m-%d %T INFO]") GOOD (1.145s)! "OK!OK!OK!""
echo "$(date +"[%Y-%m-%d %T INFO]") GOOD (1.145s)! "OK!OK!OK!""

tail -f /dev/null
