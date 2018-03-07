#!/bin/bash

# NAME="Zaknafein Do'Urden" RACE='Drow' CLASS='Ranger' CHALLENGE_RATING='4' STATS='TBD' TRAITS='clever; loyal; deft at dual wielding' NOTES='Zaknafein is considered an outcast of his people.' PRIVATE=false sh './scripts/examples/create-npc.sh'

curl "http://localhost:4741/npcs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  # --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "npc": {
      "name": "'"${NAME}"'",
      "race": "'"${RACE}"'",
      "class": "'"${CLASS}"'",
      "challenge_rating": "'"${CHALLENGE_RATING}"'",
      "stats": "'"${STATS}"'",
      "traits": "'"${TRAITS}"'",
      "notes": "'"${NOTES}"'",
      "private": "'"${PRIVATE}"'",
    }
  }'

echo
