# Complete GitOps Implementation Repository

Infrastructure automation and configuration repository for Busibeez, including Kubernetes manifests, Helm charts, CI/CD pipelines, monitoring, logging, and ArgoCD GitOps workflows.

## Directory Structure
- `k8s-manifests/` - Kubernetes manifests (base and environment-specific overlays)
- `helm-charts/` - Helm charts for dynamic deployments
- `argocd/` - ArgoCD GitOps configurations
- `scripts/` - Automation scripts for deployment
- `monitoring/` - Monitoring stack (Prometheus, Grafana)
- `logging/` - Logging setup (ELK)
- `.circleci/` - CI/CD pipeline configuration

## Deployment Strategy
Using ArgoCD for automated deployments to Dev, Test, and Prod environments with dynamic image tagging.
