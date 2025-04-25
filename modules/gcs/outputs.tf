# Optional: Output the bucket's self_link
output "basic_bucket_self_link" {
  description = "The self_link of the basic GCS bucket."
  value       = google_storage_bucket.basic_bucket.self_link
}

# Optional: Output the bucket's URL
output "basic_bucket_url" {
  description = "The URL of the basic GCS bucket."
  value       = google_storage_bucket.basic_bucket.url
}