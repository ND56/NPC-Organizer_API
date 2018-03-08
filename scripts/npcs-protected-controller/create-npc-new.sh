curl "http://localhost:4741/npcs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "npc": {
      "name": "'"${NAME}"'",
      "race": "'"${RACE}"'",
      "challenge_rating": "'"${CHALLENGE_RATING}"'",
      "traits": "'"${TRAITS}"'",
      "notes": "'"${NOTES}"'",
      "private": "'"${PRIVATE}"'",
      "dnd_class": "'"${DND_CLASS}"'",
      "HP": "'"${HP}"'",
      "AC": "'"${AC}"'",
      "ability_modifiers": "'"${ABILITY_MODIFIERS}"'",
      "spells_abilities": "'"${SPELLS_ABILITIES}"'",
      "items": "'"${ITEMS}"'",
      "level": "'"${LEVEL}"'"
    }
  }'

echo
