#!/bin/sh

if [[ -z "$1" ]]; then
    echo "access_token is required to run this action"
    exit 126
fi

if [[ -z "$2" ]]; then
    echo "peer_ids is required to run this action"
    exit 126
fi

if [[ -z "$3" ]]; then
    RUN_URL="https://github.com/$GITHUB_REPOSITORY/actions/runs/$GITHUB_RUN_ID"
    TEXT="🔔 Workflow '$GITHUB_WORKFLOW' completed%0A%0ARepository: $GITHUB_REPOSITORY%0ABranch: ${GITHUB_REF##*/}%0A%0A$RUN_URL"
else
    TEXT="$3"
fi

if [[ -z "$4" ]]; then
    API_VERSION="5.134"
else
    API_VERSION="$4"
fi


params="peer_ids=$2&message=$TEXT&access_token=$1&v=$API_VERSION&random_id=0"

curl -d "$params" https://api.vk.com/method/messages.send