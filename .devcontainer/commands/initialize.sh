#!/bin/bash

truncate -s 0 .devcontainer/.env.devcontainer

if which gh &>/dev/null; then
    gh auth token | xargs -I {} echo "GH_TOKEN="{} >> .devcontainer/.env.devcontainer
fi
