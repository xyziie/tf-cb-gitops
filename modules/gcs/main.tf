locals {
  network = "${element(split("-", var.subnet), 0)}"
}

# Resource to generate a random suffix
resource "random_id" "bucket_suffix" {
  # byte_length determines the randomness. 4 bytes = 8 hex characters.
  # Adjust as needed for desired uniqueness/length.
  byte_length = 4
}

#
resource "google_storage_bucket" "basic_bucket" {
  # --- Required Arguments ---
  # Bucket names must be globally unique across all of Google Cloud
  name = "${local.network}-${random_id.bucket_suffix.hex}"

  # The location (region, multi-region, dual-region) for the bucket
  location = "US-CENTRAL1" # Example: A single region

  # Optional but Recommended: Explicitly set the project ID
  project = "${var.project}" # <<< REPLACE with your Project ID
}

