#!/bin/bash
# rollback.sh - Roll back an ArgoCD application to a specific revision.
#
# Usage:
#   ./rollback.sh <app-name> <revision>
# Example:
#   ./rollback.sh dev-api 3

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <app-name> <revision>"
  exit 1
fi

APP=$1
REVISION=$2

echo "Rolling back application '$APP' to revision '$REVISION'..."

# Ensure the argocd CLI is available and you are logged in.
# Uncomment and adjust the following if needed:
# argocd login your-argocd-server.example.com --username admin --password yourpassword --insecure

# Rollback the application:
argocd app rollback "$APP" "$REVISION"

if [ $? -eq 0 ]; then
  echo "Rollback successful for $APP to revision $REVISION."
else
  echo "Rollback failed for $APP." >&2
  exit 1
fi
