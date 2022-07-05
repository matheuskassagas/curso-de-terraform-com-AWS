variable "instance" {
    description = "Instance configuration per workspace"
    
    type = object({
        dev = object({
            ami = string
            type = string
                  number = number
        }) 
        prod = object({
            ami  = string
            type = string
            number = number
        })
    })
}