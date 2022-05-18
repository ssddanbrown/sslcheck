#!/bin/bash

# This example script will check the ssl expiry status for the specified
# domains and send the results via email.
# This script requires the 'mail' command and php to be set up.
# The `sslcheck` script needs to be in the same folder as this script..


## CONFIG
#############
# ./sslcheck www.gorro.com.ar tienda.gorro.com.ar www.tresdoce.com.ar www.estudiofluk.com.ar apicedes.tresdoce.com.ar www.estudiohamaca.com.ar www.adipol.com.ar jenkins.tresdoce.com.ar static-pre.tresdoce.com.ar static.tresdoce.com.ar
# Set the domains you want to check, Space separated.
DOMAINS="www.gorro.com.ar tienda.gorro.com.ar www.tresdoce.com.ar www.estudiofluk.com.ar apicedes.tresdoce.com.ar www.estudiohamaca.com.ar www.adipol.com.ar jenkins.tresdoce.com.ar static-pre.tresdoce.com.ar static.tresdoce.com.ar"

# Set the email address you want to send the results to
EMAIL="mdelgado@tresdoce.com.ar"


## SCRIPT
#############

# Get current dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Run sslcheck command and store output
OUTPUT=`php $DIR/sslcheck $DOMAINS`
# Get current date
NOW=$(date +"%Y-%m-%d")
# Send output via email, Replacing ASCII escape codes
echo "$OUTPUT"| sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g" \
  | mail -s "Your Weekly SSL Report for $NOW" $EMAIL
