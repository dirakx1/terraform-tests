resource "null_resource" "uptimeupdate" {

  provisioner "local-exec" {
    command = "echo"

    environment {
      GCLOUD_PROJECT                 = "nc-te-teststackdrive001-plygrd"
      GOOGLE_APPLICATION_CREDENTIALS = "${var.gcp_credentials}"
    }
  }
}

