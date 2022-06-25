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

#Variable definition precedence

- Environment variables
- The terraform.tfvars file, if present.
- The terraform.tfvars.json file, if present.
- Any _.auto.tfvars or _.auto.tfvars.json files, processed in lexical order of their filenames
- Any **-var** and **-var-file options on the command line, in the order they are provided:
  **terraform plan -var-file="prod.tfvars"\*\*
