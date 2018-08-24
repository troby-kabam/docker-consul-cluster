Commands

- terraform init
  - Initialize the terraform enviroment.
- make
  - Run terraform validate and plan.
  - Save this plan to current.tfplan.
- make apply
  - Apply the plan in current.tfplan.
- make destroy
  - Run terraform destroy.
  - Can be called as 'make clean'.
- make logs
  - tail docker logs from consul-0.
- make info
  - consul info from consul-0.

Usage
- terraform init
- make
- make apply

Docker Network Types
- bridge: create a network stack on the default Docker bridge
- none: no networking
- container:<name|id>: reuse another container's network stack
- host: use the Docker host network stack
- <network-name>|<network-id>: connect to a user-defined network
https://docs.docker.com/engine/reference/run/#network-settings
