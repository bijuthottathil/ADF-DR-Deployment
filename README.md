# Azure Data Factory DR with Terraform & GitHub Actions

This project provisions:
- Primary & DR ADF in US Central & East
- Azure Traffic Manager to manage failover
- CI/CD automation via GitHub Actions

## 🚀 Deploy

1. Add GitHub secrets:
   - `ARM_CLIENT_ID`
   - `ARM_CLIENT_SECRET`
   - `ARM_SUBSCRIPTION_ID`
   - `ARM_TENANT_ID`

2. Push to `main` or use `workflow_dispatch` to deploy.

## 📡 Traffic Manager URL

Check DNS: `adfdr.trafficmanager.net`
