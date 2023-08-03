# variables.tf
variable prefix {
    type = string
    default = "contoso"
}

variable region {           
    type = string
    default = "westus2"
}

variable tags {
    type= map          
}

variable rg_names {
  type = list(string)
}