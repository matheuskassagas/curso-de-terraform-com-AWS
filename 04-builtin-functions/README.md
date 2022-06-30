```
https://www.youtube.com/watch?v=dmIrPSBHSwc&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=17
```

# Acesse a pasta

- command

```
terraform init
```

```
terraform plan
```

```
terraform apply -var="env=dev" -auto-approve
```

- Verifique instancia na aws
- Verifique o s3 com o nome gerado que deve ter o objeto criado
- Abra o objeto zip
- Faca o download

# Testantando a validacao ami

- command

```
terraform apply -var="instance_ami=120332hash" -auto-approve
```
