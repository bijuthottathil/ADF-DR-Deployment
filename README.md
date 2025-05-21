# Azure Data Factory DR with Terraform & GitHub Actions
![image](https://github.com/user-attachments/assets/0f0b22bf-6a9e-4524-aa8c-ad93010a8541)


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
![image](https://github.com/user-attachments/assets/7f8b6fc7-a85f-4c7b-8213-21e996441b85)
