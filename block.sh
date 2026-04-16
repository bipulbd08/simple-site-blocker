#!/bin/bash

HOSTS_FILE="/etc/hosts"
REDIRECT="127.0.0.1"

ACTION=$1
shift   # remove first argument (add/remove), rest become sites

for site in "$@"
do
    if [ "$ACTION" == "add" ]; then

        if grep -q "$site" "$HOSTS_FILE"; then
            echo "$site already blocked."
        else
            echo "$REDIRECT $site" | sudo tee -a "$HOSTS_FILE" > /dev/null
            echo "Blocked: $site"
        fi

    elif [ "$ACTION" == "remove" ]; then

        sudo sed -i "/$site/d" "$HOSTS_FILE"
        echo "Unblocked: $site"

    else
        echo "Usage: $0 add|remove domain1 domain2 ..."
        exit 1
    fi
done
