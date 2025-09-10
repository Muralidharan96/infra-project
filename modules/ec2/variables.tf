variable "ami_id"{
    type        = string
    description = "Ami id of my ec2"
}

variable "intsance_type"{
    type        = string
    description = "Instance type of my ec2"
}

variable "subnet_id"{
    type        = string
    description = "subnet Id of my ec2"
}

variable "ec2_count"{
    type        = string
    description = "count for n.o of my ec2"
}

variable "env"{
    type        = string
    description = "what env we are creating of my ec2"
}