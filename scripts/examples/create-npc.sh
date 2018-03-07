curl "http://localhost:4741/npcs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "npc": {
      "name": "'"${NAME}"'",
      "race": "'"${RACE}"'",
      "class": "'"${CLASS}"'",
      "challenge_rating": "'"${CHALLENGE_RATING}"'",
      "stats": "'"${STATS}"'",
      "traits": "'"${TRAITS}"'",
      "notes": "'"${NOTES}"'",
      "private": "'"${PRIVATE}"'"
    }
  }'

echo
