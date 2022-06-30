```
https://www.youtube.com/watch?v=4DSeY8Zwo5Y&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=18
```

# Acesse a pasta EC2

- command

```
terraform init
```

```
terraform apply -auto-approve
```

- Verifique os outputs
- Verifique instancia na aws
- Verifique o s3 que deve ter um caminho p dev/05-data-source/terraform.tfstate
- Abra o terraform.tfstate e voce vera o JSON dos outputs do bucket backend

- command para salvar o output em outra pasta

```
terraform output -json > ../s3/outputs.json
```
