# GCP Terraform Test Project

This is a simple Terraform project used to provision a **Google Cloud Storage Bucket** on GCP. It’s intended for testing and learning how to use Terraform with Google Cloud Platform.

## 🚀 What It Does

- Creates a GCS bucket with the specified name
- Sets location and storage class
- Authenticates using a local service account JSON file

## 🧱 Files

- `main.tf` – Contains all Terraform code for provisioning the bucket
- `terraform.tf` – (optional) Backend config or version control
- `terraform.tfstate` – Auto-generated state file after apply

## ✅ Prerequisites

- Terraform installed
- A GCP project with billing enabled
- A service account JSON key with Storage Admin rights

## ⚙️ How to Use

```bash
# Step 1: Initialize Terraform
terraform init

# Step 2: Review what will be created
terraform plan

# Step 3: Apply the infrastructure
terraform apply

## OutPuts
output "bucket_name" {
  value = google_storage_bucket.my_bucket.name
}

output "bucket_url" {
  value = google_storage_bucket.my_bucket.url
}

## 🧯 Troubleshooting

- **Billing Not Enabled**: Make sure billing is active for your GCP project.
- **403 Permission Errors**: Check that your service account has `Storage Admin` role.
- **Invalid Project ID**: Double-check the project ID in your `main.tf` or credential file.