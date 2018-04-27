curl "http://localhost:4741/saves" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "safe": {
      "folder_id": "'"${FOLDER_ID}"'",
      "npc_id": "'"${NPC_ID}"'"
    }
  }'

echo
