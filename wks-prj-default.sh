#!/bin/bash

TOKEN=""
WORKSPACE_ID="ws-GSVWeaWDje9WXaXE"

echo "Configurando workspace para usar Project Default..."

curl -s \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request PATCH \
  --data @- \
  https://app.terraform.io/api/v2/workspaces/$WORKSPACE_ID <<EOF
{
  "data": {
    "type": "workspaces",
    "attributes": {
      "setting-overwrites": {
        "execution-mode": false
      }
    }
  }
}
EOF

echo -e "\n✅ Workspace configurado para usar Project Default!"