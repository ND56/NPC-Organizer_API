#!/bin/bash

curl "http://localhost:4741/likes/destroy" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "like": {
      "npc_id": "'"${NPC_ID}"'"
    }
  }'


echo
