#!/bin/bash

curl "http://localhost:4741/npcs/search-by-class" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "dnd_class": "'"${DND_CLASS}"'"
    }
  }'

echo
