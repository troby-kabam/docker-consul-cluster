resource "docker_container" "consul_0" {
  image = "consul:latest"
  name = "consul-0"
  command = ["agent","-bootstrap-expect=3","-server=true","-retry-join","127.0.0.1"]

  ports {
    internal = 8300
    external = 8300
    ip = "0.0.0.0"
  }

  ports {
    internal = 8301
    external = 8301
    ip = "0.0.0.0"
  }

  ports {
    internal = 8302
    external = 8302
    ip = "0.0.0.0"
  }

  ports {
    internal = 8500
    external = 8500
    ip = "0.0.0.0"
  }

  ports {
    internal = 8600
    external = 8600
    ip = "0.0.0.0"
  }
}

resource "docker_container" "consul_1" {
  image = "consul:latest"
  name = "consul-1"
  publish_all_ports = true
  command = ["agent","-bootstrap-expect=3","-server=true","-retry-join","127.0.0.1"]
}

resource "docker_container" "consul_2" {
  image = "consul:latest"
  name = "consul-2"
  publish_all_ports = true
  command = ["agent","-bootstrap-expect=3","-server=true","-retry-join","127.0.0.1"]
}

resource "null_resource" "bootstrap_cluster" {
  provisioner "local-exec" {
    command = "docker exec consul-0 consul join ${docker_container.consul_0.ip_address} ${docker_container.consul_1.ip_address} ${docker_container.consul_2.ip_address}"
  }
}
