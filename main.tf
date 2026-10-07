
# Module 1: Network / VPC creation
 module "vpc" {
     source = "./modules/vpc"
     vpc_cidr = var.vpc_cidr
     public_subnet_cidr = var.public_subnet_cidr
 }

 # Module 2: EC2 Instance creation
    module "ec2_instance" {
        source = "./modules/ec2"
        instance_type = var.instance_type
        public_key_path = var.public_key_path
        environment = var.environment
        # Pass root variables down to the module:
        custom_username = var.custom_username
        custom_password = var.custom_password
        vpc_id    = module.vpc.vpc_id  # <-- Ensure this is passed
        subnet_id = module.vpc.public_subnet_id      

        depends_on = [
         module.vpc
          ]  
       
    }