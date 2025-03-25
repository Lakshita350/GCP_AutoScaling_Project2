# GCP Auto-Scaling Project

This repository contains:
- **Monitoring scripts** using Prometheus and Node Exporter
- **Deployment configuration** using a startup script
- **Terraform scripts** for auto-scaling configuration
- **Sample Flask application** for testing auto-scaling

## Setup Instructions
1. Deploy monitoring with `install_monitoring.sh`
2. Deploy auto-scaling with Terraform (`terraform apply`)
3. Deploy the sample app (`python3 app.py` or Docker)
```
