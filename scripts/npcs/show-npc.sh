#!/bin/bash

curl "http://localhost:4741/npcs/${ID}" \
  --include \
  --request GET

echo
