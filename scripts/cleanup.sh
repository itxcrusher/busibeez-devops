#!/bin/bash
# cleanup.sh - Clean up completed and failed pods in a given namespace.
#
# Usage:
#   ./cleanup.sh [namespace]
# If no namespace is provided, the default is "default".

NAMESPACE=${1:-default}

echo "Cleaning up completed and failed pods in namespace: $NAMESPACE"

# Delete pods in Succeeded or Failed phase
kubectl delete pod --field-selector=status.phase==Succeeded -n "$NAMESPACE" --ignore-not-found
kubectl delete pod --field-selector=status.phase==Failed -n "$NAMESPACE" --ignore-not-found

echo "Cleanup complete in namespace: $NAMESPACE."
