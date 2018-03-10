#!/bin/bash

curl "http://localhost:4741/npcs/search-by-challenge-rating" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "challenge_rating": "'"${CHALLENGE_RATING}"'"
    }
  }'

echo
