#!/bin/bash
# deploy.sh - Trigger an ArgoCD sync for your deployment.
#
# Usage:
#   ./deploy.sh [app-name]
# If no app name is provided, it syncs the top-level App-of-Apps (busibeez-apps).

# Set the ArgoCD application to sync.
APP=${1:-busibeez-apps}

echo "Triggering ArgoCD sync for application: $APP"

# Make sure the argocd CLI is available and logged in.
# Example: argocd login <ARGOCD_SERVER> --username admin --password <PASSWORD>
# Uncomment and adjust the following if needed:
# argocd login your-argocd-server.example.com --username admin --password yourpassword --insecure

# Trigger the sync:
argocd app sync "$APP"

if [ $? -eq 0 ]; then
  echo "ArgoCD sync triggered successfully for $APP."
else
  echo "Failed to trigger ArgoCD sync for $APP." >&2
  exit 1
fi
