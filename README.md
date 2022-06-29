# Variables

```
https://www.terraform.io/language/values/variables
```

# Commands

- $ terraform init
- $ terraform fmt
- $ terraform plan
- $ terraform apply -auto-approve
- $ terraform destroy

# Substitui valores de variaveis

- command

```
$ terraform plan -var="aws_profile=tf014" -var="instance_type=t3.medium"
```

# Building values prod

- command

```
$ terraform plan -var-file="prod.tfvars"
```

# Variable definition precedence

- Environment variables
- The terraform.tfvars file, if present.
- The terraform.tfvars.json file, if present.
- Any _.auto.tfvars or _.auto.tfvars.json files, processed in lexical order of their filenames
- Any **-var** and **-var-file** options on the command line, in the order they are provided:

```
$  terraform plan -var-file="prod.tfvars"
$  terraform apply -var-file="prod.tfvars" -auto-approve
$  terraform detroy -var-file="prod.tfvars" -auto-approve
```

# Gerar arquivo tfplan.out

```
$ terraform plan -out="tfplan.out"
```

# Visualizar arquivo output

```
$ terraform apply "tfplan.out"
```

# Link sobre random

```
https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet
```

# Como importar bucket da aws

```
https://www.youtube.com/watch?v=x5P_wnrUq6o&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=15
```

```
$ terraform import aws_s3_bucket.bucket <bucket-name>
```

# Versionamento do Bucket

```
https://www.youtube.com/watch?v=QHfI3NRedIg&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=16
```

# Executando backend.hcl

- curso-de-terraform-com-AWS\03-remote-state\01-usando-remote-state\backend.hcl

```
$ terraform init -backend=true -backend-confing="backend.hcl"
```
