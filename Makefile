plan:
	terraform validate
	terraform plan -out current.tfplan
apply:
	terraform apply current.tfplan
destroy:
	terraform destroy
clean:destroy
logs:
	docker logs -f consul-0
info:
	docker exec -it consul-0 consul info
