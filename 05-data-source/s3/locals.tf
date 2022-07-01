locals {
  instance = {
    id  = data.terraform_remote_state.server.output.id
    ami = data.terraform_remote_state.server.output.ami
    arn = data.terraform_remote_state.server.output.arn
  }
}
