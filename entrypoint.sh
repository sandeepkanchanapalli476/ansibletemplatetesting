#!/bin/sh
CUSTOM_HEADING="Welcome To Telugu DevOps Training By Sandeep Kumar Kanchanapalli"
CUSTOM_HEADING1="Learning AWS ECS and EKS"

TODAYS_DATE=$(date +%F)
HOST_NAME=$(hostname)
FQDN_NAME=$(hostname -f 2>/dev/null || hostname)
IP_ADDRESS=$(hostname -i | awk '{print $1}')

sed -e "s|{{CUSTOM_HEADING}}|$CUSTOM_HEADING|g" \
    -e "s|{{CUSTOM_HEADING1}}|$CUSTOM_HEADING1|g" \
    -e "s|{{TODAYS_DATE}}|$TODAYS_DATE|g" \
    -e "s|{{HOST_NAME}}|$HOST_NAME|g" \
    -e "s|{{FQDN_NAME}}|$FQDN_NAME|g" \
    -e "s|{{IP_ADDRESS}}|$IP_ADDRESS|g" \
    /usr/share/nginx/html/index.template \
    > /usr/share/nginx/html/index.html

exec "$@"