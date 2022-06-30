locals {
  instance = {
    id  = data.terraform_remote_state.server.id
    ami = data.terraform_remote_state.server.ami
    arn = data.terraform_remote_state.server.arn
  }
}
