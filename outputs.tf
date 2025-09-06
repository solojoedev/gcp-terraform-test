output "bucket_url" {
  description = "The URL of the created GCS bucket"
  value       = "https://console.cloud.google.com/storage/browser/${google_storage_bucket.my_bucket.name}/"
}