module "vpc"{
    source   = "../../modules/vpc"
    vcp_cid  ="11.0.0.0/22"
    env      = "qa"
    subnet_cidr = "11.0.1.0/24"
    az       = "ap-south-1a"
}

module "ec2"{
    source   ="../../modules/ec2"
    ami_id   ="ami-02d26659fd82cf299"
    intsance_type ="t2.medium"
    subnet_id = module.vpc.subnet_id
    ec2_count = 1
    env      = "qa"
}