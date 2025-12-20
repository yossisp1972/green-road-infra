# Green Road Infra

## Overview
This repository contains Terraform code to provision the AWS EKS cluster and networking for the Green Road App.

## Infrastructure Components
- VPC, subnets, and networking (via terraform-aws-modules/vpc)
- EKS cluster and managed node groups (via terraform-aws-modules/eks)

## Deployment
- Apply Terraform to provision the infrastructure.
- The app is deployed separately from the green-road-app repo using GitHub Actions.

## Monitoring
- **CloudWatch Container Insights** is enabled for the EKS cluster (see the app repo workflow).
- CloudWatch agent and Fluent Bit DaemonSet are deployed for log and metrics collection.
- Logs and metrics are available in AWS CloudWatch (Container Insights and Log Groups).

## How to Monitor
- Go to AWS CloudWatch > Container Insights for dashboards and metrics.
- Go to AWS CloudWatch > Logs > Log groups for application and cluster logs.

## Application
- See the green-road-app repo for the static HTML quiz app and deployment workflow.

