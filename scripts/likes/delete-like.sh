#!/bin/bash

curl "http://localhost:4741/likes/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
