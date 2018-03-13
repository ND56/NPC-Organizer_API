curl "http://localhost:4741/likes/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "like": {
      "npc_id": "'"${NPC_ID}"'"
    }
  }'

echo
