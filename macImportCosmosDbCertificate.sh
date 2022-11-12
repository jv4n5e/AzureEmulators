#!/bin/bash

export HOST_IP="`ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | head -n 1`"

curl -k https://$HOST_IP:8081/_explorer/emulator.pem > ./emulatorcert.crt

sudo security add-trusted-cert -d -r trustRoot -k ~/Library/Keychains/login.keychain emulatorcert.crt