curl "http://localhost:4741/likes/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "like": {
      "user_id": "'"${USER_ID}"'"
    }
  }'

echo
