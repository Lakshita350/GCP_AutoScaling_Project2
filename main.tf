```hcl
provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

resource "google_compute_instance_template" "default" {
  name         = "instance-template"
  machine_type = "e2-medium"
  disk {
    auto_delete  = true
    boot         = true
    source_image = "debian-cloud/debian-11"
  }
  network_interface {
    network = "default"
  }
  metadata_startup_script = file("./startup_script.sh")
}

resource "google_compute_autoscaler" "default" {
  name   = "autoscaler"
  zone   = "us-central1-a"
  target = google_compute_instance_group_manager.default.id
  autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 1
    cpu_utilization {
      target = 0.75
    }
  }
}
```
