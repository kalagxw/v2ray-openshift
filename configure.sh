#!/bin/bash
# fd929 new configuration
echo "$CONFIG_JSON" > /etc/fd929/config.json
# Run fd929
/usr/bin/fd929/fd929 -config=/etc/fd929/config.json
