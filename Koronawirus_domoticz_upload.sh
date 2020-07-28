#!/bin/bash

# Domoticz Configuration

domoticzserver="192.168.1.2" # Write here your domoticz domain adress or IP number
domoticzport="8080"


# Domoticz username and password only if domoticz is secured that way
domoticzuser="username"
domoticzpass="password"

# Send data to Domoticz for whole Poland with autorisation user and pass in domoticz
#curl --max-time 60 -s -k "http://$domoticzuser:$domoticzpass@${domoticzserver}:${domoticzport}/json.htm?type=command&param=udevice&idx=132&svalue=$cala_polska_zakazenia"

#curl --max-time 60 -s -k "http://$domoticzuser:$domoticzpass@${domoticzserver}:${domoticzport}/json.htm?type=command&param=udevice&idx=131&svalue=$cala_polska_zgony"


# Send data to Domoticz for whole Poland without authorisation if domoticz allow that

# whole Poland infections
curl --max-time 60 -s -k "http://${domoticzserver}:${domoticzport}/json.htm?type=command&param=udevice&idx=132&svalue=$cala_polska_zakazenia"

# whole Poland deaths
curl --max-time 60 -s -k "http://${domoticzserver}:${domoticzport}/json.htm?type=command&param=udevice&idx=131&svalue=$cala_polska_zgony"
