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
