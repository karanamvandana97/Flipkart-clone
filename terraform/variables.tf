variable "resource_group_name"{
    type = string
    description = "name of the resource group"
    default = "flipkart-rg"
}

variable "location"{
    type = string
    description = "location"
    default = "australiacentral"
}

variable "asp"{
    type = string
    description = "name of the asp"
    default = "flipkart-asp"
}

variable "webapp"{
    type = string
    description = "name of the webapp"
    default = "flipkart-webapp-demo"
}
