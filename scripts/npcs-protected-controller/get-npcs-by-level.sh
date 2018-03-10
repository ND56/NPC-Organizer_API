#!/bin/bash

curl "http://localhost:4741/npcs/search-by-level" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "level": "'"${LEVEL}"'"
    }
  }'

echo
