#!/bin/bash

if /usr/bin/checkupdates | grep -q '^\S'; then
	󰮯 
else
    echo "󰮯 "
fi
