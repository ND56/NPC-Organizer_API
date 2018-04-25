curl "http://localhost:4741/folders" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "folder": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
