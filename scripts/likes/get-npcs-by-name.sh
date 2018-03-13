#!/bin/bash

curl "http://localhost:4741/npcs/search-by-name" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "name": "'"${NAME}"'",
      "race": "'"${RACE}"'"
    }
  }'

echo
