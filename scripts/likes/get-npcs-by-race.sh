#!/bin/bash

curl "http://localhost:4741/npcs/search-by-race" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "race": "'"${RACE}"'"
    }
  }'

echo
