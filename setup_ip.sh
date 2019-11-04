#!/bin/bash

IP=$1

sudo cat <<EOF | sudo tee -a /etc/dhcpcd.conf > /dev/null
interface eth0
static ip_address=${IP}/24
EOF

