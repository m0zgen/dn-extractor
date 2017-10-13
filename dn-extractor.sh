#!/bin/bash

# Author: Yevgeniy Goncharov aka xck, https://sys-adm.in
#

# Paths
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd)

# Source URLs file
LISTFILE="$SCRIPT_PATH/url-list.txt"


# Read data from txt
while read -r line; do

  # Check if line not blank or not comment
    if [[ -n "$line" && "$line" != [[:blank:]#]* ]]; then

      # Extract domain names from URLs
      echo "$line" | sed -e 's|^[^/]*//||' -e 's|/.*$||'

    fi

done < $LISTFILE