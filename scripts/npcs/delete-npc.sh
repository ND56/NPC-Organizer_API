#!/bin/bash

curl "http://localhost:4741/npcs/${ID}" \
  --include \
  --request DELETE

echo
