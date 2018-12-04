variable "gcp_credentials" {}

resource "null_resource" "testingpolicies2" {

  provisioner "local-exec" {
    command = "echo"

    environment {
      GCLOUD_PROJECT                 = "nc-te-teststackdrive001-plygrd"
      GOOGLE_APPLICATION_CREDENTIALS = "${var.gcp_credentials}"
    }
  }
}
