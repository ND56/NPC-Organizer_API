curl "http://localhost:4741/folders/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "folder": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
