# Variables

```
https://www.terraform.io/language/values/variables
```

# Commands

- terraform init
- terraform fmt
- terraform plan
- terraform apply -auto-approve
- terraform destroy

# Substitui valores de variaveis

- command

```
terraform plan -var="aws_profile=tf014" -var="instance_type=t3.medium"
```

# Building values prod

- command

```
terraform plan -var-file="prod.tfvars"
```
