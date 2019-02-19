#!/usr/bin/env bash

# Get active plugins list
wp option get --format=var_export active_plugins | grep '=>' | cut -d '>' -f 2 | tr '\n' ' '