#!/bin/bash

curl "http://localhost:4741/npcs/search-by-creator" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "credentials": {
      "user_name": "'"${USER_NAME}"'"
    }
  }'

echo
