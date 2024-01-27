#!/bin/bash

updates_count=$(/usr/bin/checkupdates | wc -l)

if [ $updates_count -gt 99 ]; then
    echo "󰮯 >99"
else
    echo "󰮯  $updates_count"
fi
