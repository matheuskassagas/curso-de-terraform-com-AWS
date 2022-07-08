# 00-remote-state-bucket 
- E um bucket criado com o nome atraves da conta 
- Criamos um dinamo DB onde podemos ter 5 escrita e 5 leitura

# 01-usando-remote-state
- Criamos uma Instance EC2
- E para guardarmos as informacoes de log utilizamos o backend s3 passando o nosso bucket 

bucket  = "tfstate-000000000000" 
local   = "dev/01-usando-remote-state/terraform.tfstate"
