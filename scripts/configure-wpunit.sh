#!/usr/bin/env bash

echo "Configure wpunit suite"
TEST_SITE_PLUGINS=$(wp option get --format=var_export active_plugins | grep '=>' | cut -d '>' -f 2 )
#TEST_SITE_PLUGINS=$(echo "$TEST_SITE_PLUGINS" | sed 's/.$//')
export TEST_SITE_PLUGINS