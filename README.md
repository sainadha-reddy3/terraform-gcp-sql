Terraform GCP Infrastructure – Cloud SQL Deployment

This repository contains Terraform configurations to provision Google Cloud Platform (GCP) resources such as VPC, Subnet, Firewall rules, Cloud SQL instance, Database, and User creation.
It is designed to help automate infrastructure provisioning following Infrastructure as Code (IaC) best practices.

📁 Project Structure
.
├── main.tf               # Core infrastructure resources (VPC, Cloud SQL, etc.)
├── provider.tf           # GCP provider configuration
├── variables.tf          # Input variables for customization
├── outputs.tf            # Output values such as connection string, instance name
├── versions.tf           # Terraform & provider version constraints
├── terraform.tfvars      # Actual variable values (NOT committed)
├── terraform.tfvars.example  # Safe example variables for users
└── .gitignore            # Prevents committing sensitive files

🚀 Features

Creates a GCP VPC and Subnet

Deploys a Cloud SQL MySQL instance

Creates a database inside the instance

Creates SQL user credentials

Outputs important connection parameters

Maintains clear environment variable management

Follows Terraform best practices (providers, variables, outputs, versions)

🛠 Prerequisites

Before running this project, ensure you have:

Terraform v1.0+ installed

A Google Cloud Project

A Service Account with roles:

Cloud SQL Admin

Compute Network Admin

Storage Admin

A service account key JSON file exported

Set your credentials path:

export GOOGLE_APPLICATION_CREDENTIALS="/path/to/key.json"


Windows PowerShell:

$env:GOOGLE_APPLICATION_CREDENTIALS="C:\path\key.json"

⚙️ Usage
Step 1 — Initialize Terraform
terraform init

Step 2 — Review the plan
terraform plan -var-file="terraform.tfvars"

Step 3 — Apply to create infrastructure
terraform apply -var-file="terraform.tfvars"

Step 4 — Destroy infrastructure
terraform destroy -var-file="terraform.tfvars"

🔐 Security Notes

Do NOT commit the following files:

terraform.tfstate

terraform.tfstate.backup

terraform.tfvars

.terraform/ folder

.terraform.lock.hcl

This repo already includes a .gitignore file to prevent accidental commits.

📦 Example terraform.tfvars.example
project_id     = "your-gcp-project-id"
region         = "us-central1"
db_name        = "sampledb"
db_user        = "sampleuser"
db_password    = "CHANGE_ME"


Users should create their own terraform.tfvars with real values.

📤 Outputs

After applying, Terraform will show outputs such as:

Cloud SQL instance connection name

Public IP (if enabled)

Database name

Username

These outputs help connect your application to the SQL instance.

🧩 Why Terraform?

Terraform allows:

Reusable, declarative infrastructure

Version-controlled infrastructure code

Automated provisioning across environments

Clear separation of variables and resources

📘 Notes

This repository is ideal for:

Learning Terraform with GCP

Setting up Cloud SQL as part of DevOps workflows

Understanding IaC for real-world environments

Preparing for DevOps interviews and hands-on tasks
