curl -s \
  --header "Authorization: Bearer " \
  --header "Content-Type: application/vnd.api+json" \
  https://app.terraform.io/api/v2/agent-pools/apool-GKu5mut6Wy69NhGX \
  | jq -r '.data.relationships.workspaces.data[].id'