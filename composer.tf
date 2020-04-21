provider "google-beta" {
    credentials = "${file("${var.credential.data}")}"
    project = "${var.project_id}"
    region = "asia-northeast1"
}

resource "google_composer_environment" "composer-environment" {
    name = "sample"
    project = "${var.project_id}"
    region = "asia-northeast1"
    config {
        node_count = 3

        node_config {
            zone = "asia-northeast1-c"
            machine_type = "n1-standard-1"
            disk_size_gb = 20
        }
    }
}