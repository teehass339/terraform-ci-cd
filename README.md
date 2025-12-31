# Terraform CI/CD Pipeline with GitHub Actions

This project demonstrates how to deploy AWS infrastructure using Terraform
through a secure and automated CI/CD pipeline built with GitHub Actions.

---

## Project Goals

- Automate Terraform formatting, validation, planning, and deployment
- Enforce infrastructure change control using pull requests
- Store Terraform state remotely with S3 and DynamoDB locking
- Follow security best practices for CI/CD pipelines

---

## Pipeline Overview

- **Terraform formatting and validation** on every pull request
- **Terraform plan** generated on pull requests
- **Terraform apply** executed only on merge to main
- **Remote backend** using S3 and DynamoDB
- **AWS authentication** handled securely via Github OIDC

---

## Technologies Used

- Terraform
- GitHub Actions
- AWS (S3, DynamoDB, IAM)

---

## Security Decisions

- Removed static AWS credentials from GitHub secrets
- Used **OIDC-based IAM role** with least privilege policy
- Remote state with locking prevents concurrent applies and ensures collaboration

---

## Future Enhancements

- Multi-environment support (dev / prod)
- Manual approval gates
- Terraform module reuse
