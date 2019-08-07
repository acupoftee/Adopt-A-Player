#!/bin/bash

curl --include --request PATCH "https://adopt-a-player.herokuapp.com/users/${ID}" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-type: application/json" \
  --data '{
    "user": {
      "display_name": "'"${DISPLAYNAME}"'",
      "summary": "'"${SUMMARY}"'",
      "is_mentor": "'"${MENTOR}"'",
      "platform": "'"${PLATFORM}"'",
      "region": "'"${REGION}"'",
      "avatar_url": "'"${URL}"'",
      "skill_rating": "'"${SR}"'"
    }
  }'

echo
