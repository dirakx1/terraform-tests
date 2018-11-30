provider "google" {
  credentials = "${var.gcp_credentials}"
  project     = "nc-te-teststackdrive001-plygrd"
  region      = "us-central1"
}

resource "null_resource" "uptimeupdate" {

  provisioner "local-exec" {
    command = "echo"

    environment {
      GCLOUD_PROJECT                 = "nc-te-teststackdrive001-plygrd"
      GOOGLE_APPLICATION_CREDENTIALS = "${var.gcp_credentials}"
    }
  }
}

