# Terraform-Course---Automate-your-AWS-cloud-infrastructure

https://www.youtube.com/watch?v=SLB_c_ayRMo&list=RDCMUC8butISFwT-Wl7EV0hUK0BQ&start_radio=1&rv=SLB_c_ayRMo&t=3599

Create an aws account 
https://aws.amazon.com/?nc1=h_ls
Sign in ( Root user ) 
Aws Management Console

Install Terraform 
https://www.terraform.io/
Search - env ( Edit the system environment variables ) 
environment variables
System variables 
Edit
New
Past ( Terraform file ) 
Ok
Ok
Open Command Prompt ( CMD ) 
C:\Users\sanjeev> terraform -v
Terraform v0.12.26
C:\Users\sanjeev>

Download and Install 
Visual Studio Code - https://code.visualstudio.com/docs/?dv=win
Add Extension - Terraform ( HashiCorp ) 
Download Terrador AWS Provider - https://registry.terraform.io/providers/hashicorp/aws/latest/docs

AWS UI
AWS Console Management 
US East (N.Virginia) us-east-1

provider “aws” {
       region     = us-east-1
}

Authentication 
Static Credentials 

AWS UI
AWS Console Management 
Select Profile Name 
My Security Credentials 
Your Security Credentials
Access keys (access key ID and secret access key)
Create New Access Key 
Create Access Key
Show Access Key

provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}
Download Key File 
Close 

Visual Studio Code
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “<provider>_<resource_type>” “name” {
       config options …
       key = “value”
       key2 = “another value”
}

AWS UI
Services Tab 
Compute 
EC2
Resources
Running Instances 
Launch Instance 
Step 1: Choose an Amazon Machine Image (AMI)
Search - Ubuntu 
Ubuntu Server 18.04 LTS (HVM), SSD Volume Type - ami-085925f297f89ce1 (64-bit x86) …
Select - 64-bit(x86)
Step 2: Choose an Instance Type
Current selected: t2 micro (variables ECUs, 1 vCPUs, 2.5 GHz, Intel Xeon Family, 1 GiB memory, EBS only)
Family                  Type       vCPUs   Memory (GiB)  Instance Storage (GB)  
General purpose  t2micro  1             1                       EBS only
                             Free tier eligible
EBS - Optimized Available   Network Performance   IPv6 Support 
                                             Low to Moderate           Yes 
Review and Launch
Select an existing key pair or create a new key pair 
Proceed without a key pair
I acknowledge …
Launch Instances 
Launch Status 
View Instances
Launch Instance
Instances
Name Instance ID                     Instance Type Available Zone Instance State Status Checks 
           i-0218666128d4578…   T2 micro          us-east-1e       pending            initializing
                                                                                                  running

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_” ( resource type ) 

resource “<provider>_<resource_type>” “name” {
       config options …
       key = “value”
       key2 = “another value”
}

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
Search - ec2
Resource: aws_instance
Basic example using AMI lookup
resource “aws_instance” “my-first-server” {
       ami                = 
       instance type = 
}

AWS UI 
Instances 
Instances 
Launch Instance
Search - Ubuntu
Ubuntu Server 18.04 LTS (HVM), SSD Volume Type - ami-085925f297f89ce1 (64-bit x86) …

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_instance” “my-first-server” {
       ami                = “ami-085925f297f89ce1”
       instance type = “t2 micro”
}

resource “<provider>_<resource_type>” “name” {
       config options …
       key = “value”
       key2 = “another value”
}

Open Command Prompt ( CMD ) 
C:\Users\sanjeev>cd Documents
C:\Users\sanjeev\Documents>cd terraform-project 
C:\Users\sanjeev\Documents\terraform-project>dir  
Volume in drive C …
C:\Users\sanjeev\Documents\terraform-project>cd Project-1
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform init
Initializing provider plugins …
Checking for available provider plugins … 
Downloading plugin for provider “aws” (hashicorp/aws) 2.65.0 …
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform plan
An execution plan has been generated and is shown below …
resource “aws_instance” “my-first-server” 
            +ami                 =  “ami-085925f297f89ce1”
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
An execution plan has been generated and is shown below…
resource “aws_instance” “my-first-server” 
            +ami                 =  “ami-085925f297f89ce1”
…
Do you want to perform these actions?
Enter a value: yes 
aws_instance” “my-first-server: Creating …
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI 
Instances 
Instances 
Lanche Instance 
Name   Instance ID                     Instance Type Available Zone Instance State Status Checks 
            i-0218666128d4578…   T2 micro          us-east-1e       pending            initializing
                                                                                                  running

            i-0d549ed86b6cadca…   T2 micro          us-east-1e       pending            initializing 
                                                                                                  running               ( Terraform ) 

Instance i-0d549ed86b6cadca   Plubic DNS: ec2-34-227-90-75-compute-1 amazonaws.com
Description 

Instance ID       i-0d549ed86b6cadca
Instance Status running                                         AMI ID ubuntoImages/hvm-ssd/ubuntu …
Instance Type   t2-micro
…

Modify Resources 

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform plan
aws_instance” “my-first-server: Refreshing state… [id=i-0d549ed86b6cadca]
No changes. Infrastructure is up to date.
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
…
aws_instance” “my-first-server: Refreshing state… [id=i-0d549ed86b6cadca]
…
Apply complete ! Resources: 0 added, 0 changed, 0 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_instance” “my-first-server” {
       ami                = “ami-085925f297f89ce1”
       instance type = “t2 micro”
              tags = {
                     Name = “ubuntu”
       }
}

resource “<provider>_<resource_type>” “name” {
       config options …
       key = “value”
       key2 = “another value”
}

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform plan
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
~ update in place
resource “aws_instance” “my-first-server” {
…
tags 
“name” = “ubuntu”
…
} 

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
…
aws_instance” “my-first-server: Refreshing state… [id=i-0d549ed86b6cadca]
…
Plan: 0 to add, 1 to change, 0 to destroy. 
Do you want to perform these actions ?
Enter a value: yes
Apply complete! Resources: 0 added, 1 changed, 0 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply

AWS UI 
Instances 
Instances 
Lanche Instance 
Name   Instance ID                    Instance Type Available Zone Instance State 
ubuntu  i-0218666128d4578…   T2 micro          us-east-1e       running            

Status Checks   Public DNS (IPv4)                                                                                                   
2/2 checks         ec2-34-227-9-75.com…

AWS UI 
Description       Tags
                          Key     Value 
                          Name   ubuntu

Instance ID       i-0d549ed86b6cadca
Instance Status running                                         AMI ID ubuntoImages/hvm-ssd/ubuntu …
Instance Type   t2-micro
…

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_instance” “my-first-server” {
       ami                = “ami-085925f297f89ce1”
       instance type = “t2 micro”
              tags = {
                     #  Name = “ubuntu”
       }
}

resource “<provider>_<resource_type>” “name” {
       config options …
       key = “value”
       key2 = “another value”
}

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
~ update in place
resource “aws_instance” “my-first-server” {
…
tags 
“name” = “ubuntu” -> null
…
} 

Plan: 0 to add, 1 to change, 0 to destroy. 
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approve.
Enter a value: yes
Apply complete! Resources: 0 added, 1 changed, 0 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply

AWS UI 
Instances 
Instances 
Lanche Instance 

Description       Tags
                          Key     Value 
                             

Instance ID       i-0d549ed86b6cadca
Instance Status running                                         AMI ID ubuntoImages/hvm-ssd/ubuntu …
Instance Type   t2-micro
…

Delete Resources

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy
…
aws_instance” “my-first-server: Refreshing state… [id=i-0d549ed86b6cadca]
…
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
~ destroy
Terraform will perform the following actions:
 # aws_instance” “my-first-server will be destroyed 
resource  “aws_instance” “my-first-server” {...}
Plan: 0 to add, 0 to change, 1 to destroy. 
Do you really want to destroy all resources ?
Terraform will destroy all your managed infrastructure, as shown above.
There is no undo. Only ‘yes’ will be accepted to confirm.
Enter a value: yes
Apply complete! Resources: 0 added, 1 changed, 0 destroyed. 
aws_instance” “my-first-server: Destroying… [id=i-0d549ed86b6cadca]
…
Destroy complete ! Resources: 1 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply

AWS UI 
Instances 
Instances 
Lanche Instance 
Refresh
Name   Instance ID                    Instance Type Available Zone Instance State 
             i-0218666128d4578…   T2 micro          us-east-1e       terminated            

Status Checks   Public DNS (IPv4)         

Description       Tags
                          Key     Value 

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Plan: 1 added, 0 changed, 0 destroyed. 
Do you want to perform these actions ?
Terraform will perform the actions described above.                                                                                                                    
Only ‘yes’ will be accepted to approve.
Enter a value: yes
aws_instance” “my-first-server: Creating…
Apply completed ! Resources: 1 added, 0 changed, 0 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI 
Instances 
Instances 
Lanche Instance 
Refresh
Name   Instance ID                         Instance Type Available Zone Instance State 
             i-01b7ba73635ce8759…   T2 micro          us-east-1e       running         

Status Checks   Public DNS (IPv4)         
initializing           ec2-34-204-95-164…

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

#resource “aws_instance” “my-first-server” {
#       ami                = “ami-085925f297f89ce1”
#       instance type = “t2 micro”
#             tags = {
#                     #  Name = “ubuntu”
#       }
# }

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
aws_instance” “my-first-server: Creating…
aws_instance” “my-first-server: Refreshing state… [i-01b7ba73635ce8759]
Apply completed ! Resources: 1 added, 0 changed, 0 destroyed. 
Terraform will perform the following actions:
 # aws_instance” “my-first-server will be destroyed 
resource  “aws_instance” “my-first-server” {...}
Do you want to perform these actions ?
Terraform will perform the actions described above.                                                                                                                    
Only ‘yes’ will be accepted to approve.
Enter a value: yes
aws_instance” “my-first-server: Destroying… [i-01b7ba73635ce8759]
Apply completed ! Resources: 0 added, 0 changed, 1 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform

AWS UI 
Instances 
Instances 
Lanche Instance 
Refresh
Name   Instance ID                         Instance Type Available Zone Instance State 
             i-01b7ba73635ce8759…   T2 micro          us-east-1e        termineted        

Status Checks   Public DNS (IPv4)         

Reference Resources 

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = “10.0.1.0/24”
       tags = {
              Name = “prod-subnet” 
       }
}

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
~ create
# aws_subnet.subnet-1 {...}
# aws_vpc.first-vpc will be created 
resource “aws_vpc” “first_vpc” {...}
Do you want to perform these actions ?
Terraform will perform the actions described above.                                                                                                                    
Only ‘yes’ will be accepted to approve.
Enter a value: yes
aws_vpc.aws_first-vpc: Creating…
Apply completed ! Resources: 2 added, 0 changed, 0 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI 
Services 
Search - vpc
VPC
Resources by Region
VPCs
Create VPC
Name         VPC ID                               State IPv4 CIDR    IPv6 CIDR    DHCP options set    
production  vpc-0bd9336be75c09d1f   10.0.0.0/16                                  dopt-29ce4953

Main Route table 
rtb-0eaa425524a09023a 

Default VPC 

Description       Tags               Value
                          Key                
                          Name             production


AWS UI
VPC Dashboard
VIRTUAL PRIVATE CLOUD
Your VPCs
Subnets
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0fa049031f525cbc7   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  



Default VPC 

Description               Tags                Value                                                     
                                  Key                 prod-subnet
                                  Name

Subnet ID   subnet-0fa049031f525cbc7                        IPv4 CIDR   10.0.1.0/24
VPC            vpc-0bd9336be75c09d1f | production 

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy
aws_instance” “my-first-server: Refreshing state… [id=vpc-0bd9336be75c09d1f]                          
Do you really want to destroy all resources ?
Terraform will destroy all your managed infrastructure, as shown above.
There is no undo. Only ‘yes’ will be accepted to confirm.
Enter a value: yes
Apply complete! Resources: 0 added, 1 changed, 0 destroyed. 
aws_instance” “my-first-server: Destroying… [id=subnet-0fa049031f525cbc7]
…
Destroy complete ! Resources: 2 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply

AWS UI
VPC Dashboard
VIRTUAL PRIVATE CLOUD
Your VPCs
Subnets
Refresh

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = “10.0.1.0/24”
            
       tags = {
              Name = “prod-subnet” 
       }
}

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply - - auto-approve  
aws_instance” “my-first-server: Creating…
aws_instance” “my-first-server: Creation complete after 3s  [id=vpc-0bd9336be75c09d1f] 
…
aws_subnet.subnet-1: Creating…
aws_subnet.subnet-1: Creation complete after 1s  [id=subnet-0fa049031f525cbc7]
…
Apply completed ! Resources: 2 added, 0 changed, 0 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1> 

Terraform Files

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Error: provider.aws: no suitable 

C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform init

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup 

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = “10.0.1.0/24”
            
       tags = {
              Name = “prod-subnet” 
       }
}

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_vpc” “second-vpc” {
       cidr_block = “10.1.0.0/16”
              tags = {
                     Name = “Dev”
       }
}

resource “aws_subnet” “subnet-2” {
       vpc_id       = aws_vpc.second-vpc.id
       cidr_block = “10.1.1.0/24”
            
       tags = {
              Name = “dev-subnet” 
       }
}


#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply - - auto-approve  
aws_vpc.first-vpc: Refreshing state… [id=vpc-036a5d66b5b18afcb] 
…
aws_subnet.subnet-1: Refreshing state [id=vpc-0bd9336be75c09d1f] 
aws_vpc-second-vpc: Creating…
aws_vpc-second-vpc: Creation complete after 3s [id=vpc-0fc874647f548e270]
aws_subnet.subnet-2: Creating…
aws_subnet.subnet-2: Creation complete after 1s [id=subnet-021ebfca9f84610fa]
Apply completed ! Resources: 2 added, 0 changed, 0 destroyed. 
C:\Users\sanjeev\Documents\terraform-project\Project-1> 

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup 

terraform.tfstate
{
“mode”: “managed”,
“type”: “aws-subnet”,
“name”: “subnet-2”,
“provider”: “provider.aws”,
“instances”: [ …
       {

Practice Project 


Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf

main.tf
provider “aws” {
       region          = “us-east-1”
       access_key = “AKIAJS307JXZRDKIY5WQ”
       secret_key   = “23jHGbZ+UGjyCHoPgizEVw8dPnGErKfFTGS/GgLK”
}

# 1. Create a vpc
# 2. Create Internet Gateway
# 3. Create Custom Route Table
# 4. Create a Subnet 
# 5. Associate subnet with Route Table
# 6. Create Security Group to allow port 22, 80, 443
# 7. Create a network interface with an ip in the subnet that was created in step 4
# 8. Assign an elastic IP to the network interface created in step 7
# 9. Create Ubuntu server and install /enable apache2

AWS UI
Services
Compute
EC2
NETWORK and SECURITY
Key Pairs 
Create key pair 
Key pair 
A key pair, consisting of a private key and public key, is a set of security credentials that you use to prove identity when connecting to an instance.
Name - main-key
File format
pem ( for use with OpenSSH )
ppk ( for use with PuTTy )

pem ( for use with OpenSSH )
Create key pair ( download file ) 
Key pairs 
Name              Fingerprint                                                        ID 
main-key         23:86:b7:5a:e9:dc:44:d4:45:94:12:80:4…        key-02fbe14f494819ec

Visual Studio Code
main.tf
provider “aws” {
       region          = “us-east-1”
       access_key = “AKIAJS307JXZRDKIY5WQ”
       secret_key   = “23jHGbZ+UGjyCHoPgizEVw8dPnGErKfFTGS/GgLK”
}

# 1. Create a vpc
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource “aws_vpc” “prod-vpc” {
       cidr_block  = “10.0.0.0/16”
       tags {
              Name = “production”
       }       
}

# 2. Create Internet Gateway
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

resource “aws_internet_gateway” “gw” {
       vpc_id = aws_vpc.prod-vpc.id
}

# 3. Create Custom Route Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource “aws_route_table” “prod-route-table” {
       vpc_id = aws_vpc.prod-vpc.id
}

route {
       cidr_block   = “0.0.0.0/0”
       gateway_id = aws_internet_gateway_gw.id
}

route {
      ipv6_cidr_block                 = ::/0
      gateway_id                        = aws_internet_gateway_gw.id
}

tags = {
       Name = “Prod”
       }
}

# 4. Create a Subnet 

resource “aws_gateway” “subnet-1” {
       vpc_id       = aws_vpc.prod-vpc.id
       cidr_block = “10.0.1.0/24”
       availability_zone = “us-east-1a”

       tags {
              Name = “prod-subnet”
       }
}

# 5. Associate subnet with Route Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource “aws_route_table_association” “a” {
       subnet_id        = aws_subnet.subnet-1.id
       route_table_id = aws_route_table.prod-route-table.id 
}

# 6. Create Security Group to allow port 22, 80, 443
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

resource “aws_security_group” “allow_web” {
       name               = “allow_web_traffic”
       description       = “Allow Web inbound traffic”
       vpc_id              = aws_vpc.prod-vpc.id   
}

ingress {
       description  = “HTTPS”
       front_port    = 443 
       to_port        = 443
       protocol       = “tcp”
       cidr_blocks  = [“0.0.0.0/0”]
}
ingress {
       description  = “HTTP”
       front_port    = 80 
       to_port        = 80
       protocol       = “tcp”
       cidr_blocks  = [“0.0.0.0/0”]
}
ingress {
       description  = “SSH”
       front_port    = 22 
       to_port        = 22
       protocol       = “tcp”
       cidr_blocks  = [“0.0.0.0/0”]
}

egress {
       from_port    = 0
       to_port        = 0
       protocol       = “-1”
       cidr_blocks  = [“0.0.0.0/0”]

tags {
       Name = “allow_web”
       }
}

# 7. Create a network interface with an ip in the subnet that was created in step 4
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/network_interface

resource “aws_network_interface” “web-server-nic” {
       subnet_id            = aws_subnet.subnet-1.id
       private_ips          = [“10.0.1.50”]
       security_groups  = [aws_security_group.allow_web.id]
}

# 8. Assign an elastic IP to the network interface created in step 7
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource “aws_eip” “one” {
       vpc                                     = true
       network_interface              = aws_network_interface.web-server-nic.id
       associate_with_private_ip = “10.0.1.50” 
       depends_on                       = [aws_internet_gateway.gw]
}

output “server_public_ip” {
       value = aws_eip.one.public_ip
}

# 9. Create Ubuntu server and install /enable apache2
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-interfaces

resource “aws_instance” “web-service-instance” {
       ami                      = “ami-085925f297f89fce1”
       instance_type      = “t2-micro”
       availability_zone  = “us-east-1a”
       key_name            = “main-key”

       network_interface {
              device_index             = 0
              network_interface_id = aws_network_interface.web-server-nic.id
       }

       user_data = <<-EOF
                           #!/bin/bash
                           sudo apt update -y
                           sudo apt install apache2 -y
                           sudo systemctl start apache2     
                           sudo bash -c ‘echo your very first web server > /var/www/html/index.html‘ 
                           EOF
       tags {
              Name = “web-server”
       }
} 

output “server_private_id” {
       value = aws_instance.web-service-instance.private_ip
}

output “server_id” {
       value = aws_instance.web-service-instance.id
}

# AWS UI
# INSTANCES
# instances
# Launch instance
# Search - ubuntu 
# Ubuntu Server 18.04 LTS[HVM], SSD Volume Type - ami-085925f297f89fce1 (64-bit x86) /  ami-a5d7ab19b28efa213 (64-bit Arm)




# resource “<provider>_<resource_type>” “name” {
#       config options…
#       key   = ”value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only “yes” will be accepted to approuve.. 
Enter a value: yes
aws_vpc.prod-vpc: Creating…
aws_vpc.prod-vpc: Creation completed after 2 s [id=vpc-0eb8dcd980fd70c8e]
…

AWS UI
Services 
Compute 
EC2
Resources
Running instances
Name            Instance ID                     Instance Type   Availability Zone   Instance State                           
web-server   i-04e2123fabcd84db0    t2 micro             us-east-1a              running 

Description 
                                                                                             IPv4 Public IP 3.228.248.252
Web Browser ( Copy an Past 3.228.248.252 )
your very first web server

Windows UI
https://www.putty.org/ ( Download ) 
On the computer search for PuTTY
PuTTYgen 
PuTTY Key Generator
Load
                PuTTY Private Key Files (*.ppk)
                All Files (*.*)
main-key-pem
Open 
Ok
Save private key
Yes
File name - main-key
Save
Close 

On the computer search for PuTTY
PuTTY App

AWS UI
INSTANCES
Instances
Launch Instance    Connect 
Connect
Connect to your instance
Exemple: ssh -i “main-key.pem” ubuntu@3.228.248.252
Close

Windows UI
PuTTY configuration
Basic options for your PuTTY session
Specify the destination you want to connect to
Host Name (or IP Address)       
ubuntu@3.228.248.252
Category
Connection
SSH
Auth
Private key value for authentication - Browse…
main.key.ppk
Open
Open
3.228.248.252 PuTTY ( CMD ) 
Close
Ok
Open
Command Prompt
C:\Users\sanje>3.228.248.252
Pinging 3.228.248.252 with 32 bytes of data:
Request time out.

Windows UI
PuTTY configuration
Basic options for your PuTTY session
Specify the destination you want to connect to
Host Name (or IP Address)       
ubuntu@3.228.248.252
Category
Connection
SSH
Auth
Private key value for authentication - Browse…
main.key.ppk
Open
Open
Yes
ubuntu@ip-10.0.1.50: ~
ubuntu@ip-10.0.1.50:~$ systemctl status apache2
apache2.service - The Apache HTTP Server
Active: active (running) …  
ubuntu@ip-10.0.1.50:~$

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy - - auto-approuve

Terraform Commands 

Visual Studio Code
main.tf
resource “aws_instance” “web-service-instance” {
       ami                      = “ami-085925f297f89fce1”
       instance_type      = “t2-micro”
       availability_zone  = “us-east-1a”
       key_name            = “main-key”

       network_interface {
              device_index             = 0
              network_interface_id = aws_network_interface.web-server-nic.id
       }

       user_data = <<-EOF
                           #!/bin/bash
                           sudo apt update -y
                           sudo apt install apache2 -y
                           sudo systemctl start apache2     
                           sudo bash -c ‘echo your very first web server > /var/www/html/index.html‘ 
                           EOF
       tags {
              Name = “web-server”
       }
} 

# AWS UI
# INSTANCES
# instances
# Launch instance
# Search - ubuntu 
# Ubuntu Server 18.04 LTS[HVM], SSD Volume Type - ami-085925f297f89fce1 (64-bit x86) /  ami-a5d7ab19b28efa213 (64-bit Arm)




# resource “<provider>_<resource_type>” “name” {
#       config options…
#       key   = ”value”
#       key2 = “another value”
# }

Visual Studio Code 
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform
Commands…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state
Subcommands…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state list
aws_eip.one
aws_instance.web-server-instance
aws_internet_gateway.gw
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state show
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state show aws_eip.one
resource “aws_eip” “one” {
       associate_with_private_ip = “10.0.1.50”
       association_id                   =
       domain                               =
       id                                        =
…
}
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state list
aws_eip.one
aws_instance.web-server-instance
aws_internet_gateway.gw
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state show aws_instance.web-server-instance
resource “aws_instance” “web-server-instance” {
       ami                                               =
       arn                                                =
       associate_public_ip_address      = 
…
}
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Terrador Output 

C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state list
aws_eip.one
aws_instance.web-server-instance
aws_internet_gateway.gw
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state show aws_eip.one
resource “aws_eip” “one” {
…
public_ip                                                  = 54.158.243.220
}

Visual Studio Code 
main.tf
# 8. Assign an elastic IP to the network interface created in step 7
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource “aws_eip” “one” {
       vpc                                     = true
       network_interface              = aws_network_interface.web-server-nic.id
       associate_with_private_ip = “10.0.1.50” 
       depends_on                       = [aws_internet_gateway.gw]
}

output “server_public_ip” {
       value = aws_eip.one.public_ip
}

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply - - auto-approuve
…
Outputs:

server_public_id = 54.158.243.220
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state list
aws_eip.one
aws_instance.web-server-instance
aws_internet_gateway.gw
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform state show aws_instance.web-server-instance
…
private_ip                          = “10.0.1.50”
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>
       
Visual Studio Code
main.tf
# 9. Create Ubuntu server and install /enable apache2
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-interfaces

resource “aws_instance” “web-service-instance” {
       ami                      = “ami-085925f297f89fce1”
       instance_type      = “t2-micro”
       availability_zone  = “us-east-1a”
       key_name            = “main-key”

       network_interface {
              device_index             = 0
              network_interface_id = aws_network_interface.web-server-nic.id
       }

       user_data = <<-EOF
                           #!/bin/bash
                           sudo apt update -y
                           sudo apt install apache2 -y
                           sudo systemctl start apache2     
                           sudo bash -c ‘echo your very first web server > /var/www/html/index.html‘ 
                           EOF
       tags {
              Name = “web-server”
       }
} 

output “server_private_id” {
       value = aws_instance.web-service-instance.private_ip
}

output “server_id” {
       value = aws_instance.web-service-instance.id
}

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply - -auto-approuve
…
Outputs:

server_id                 = 1-09596dd21575f335e
server_private_id    = 10.0.1.50
server_public_id      = 54.158.243.220
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform output
…
server_id                 = 1-09596dd21575f335e
server_private_id    = 10.0.1.50
server_public_id      = 54.158.243.220
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform refresh
Outputs:

server_id                 = 1-09596dd21575f335e
server_private_id    = 10.0.1.50
server_public_id      = 54.158.243.220
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Target Resources 

Visual Studio Code
main.tf
# 9. Create Ubuntu server and install /enable apache2
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network-interfaces

resource “aws_instance” “web-service-instance” {
       ami                      = “ami-085925f297f89fce1”
       instance_type      = “t2-micro”
       availability_zone  = “us-east-1a”
       key_name            = “main-key”

       network_interface {
              device_index             = 0
              network_interface_id = aws_network_interface.web-server-nic.id
       }

       user_data = <<-EOF
                           #!/bin/bash
                           sudo apt update -y
                           sudo apt install apache2 -y
                           sudo systemctl start apache2     
                           sudo bash -c ‘echo your very first web server > /var/www/html/index.html‘ 
                           EOF
       tags {
              Name = “web-server”
       }
} 

output “server_private_id” {
       value = aws_instance.web-service-instance.private_ip
}

output “server_id” {
       value = aws_instance.web-service-instance.id
}

Visual Studio Code 
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy - target aws_instance.web-service-instance
Terraform will perform the following actions:
# aws_instance.web-service-instance will be destroyed
Do you really want to destroy all resources ?
Terraform will destroy all your managed infrastructure, as shown above.
There is no undo. Only ‘yes’ will be accepted to confirm
Enter a value: yes
Destroy complete ! Resource: 1 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply -target aws_instance.web-service-instance 
…
Enter a value: yes 
aws_instance.web-service-instance: Creating…
 …

Apply complete ! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

server_id                 = i-0978c3f0e8867cc75
server_private_id    = 10.0.1.50
server_public_id      = 54.158.243.220
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Variables 

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
       #default
}

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix
       tags = {
              Name = “prod-subnet” 
       }
}

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
var.subnet_prefix
       cidr block for the subnet

Enter a value: 10.0.1.0/24
…
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.
There is no undo. Only ‘yes’ will be accepted to confirm
Enter a value: yes
…
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI
VIRTUAL PRIVATE CLOUD
Subnets
Refresh
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.1.0/24

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy - -auto-approuve
var.subnet_prefix
       cidr block for the subnet

Enter a value: ( Enter )
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply -var “subnet_prefix=10.0.100.0/24”
...
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.

Enter a value: yes
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI
VIRTUAL PRIVATE CLOUD
Subnets
Refresh
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.100.0/24

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup
terraform.tfvars

terraform.tfvars
subnet_prefix = “10.0.200.0/24”

C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.

Enter a value: yes

AWS UI
VIRTUAL PRIVATE CLOUD
Subnets
Refresh
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.200.0/24

Visual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform destroy
…
Do you really want to destroy all resources ?
Terraform will destroy all your managed infrastructure, as shown above.
There is no undo. Only ‘yes’ will be accepted to confirm
Enter a value: yes
Destroy complete ! Resource: 2 destroyed.

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
example.tfvars
main.tf
terraform.tfstate
terraform.tfstate.backup


example.tfvars

Visual Studio Code
Terminal 
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply -var-file example.tfvars
…
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.

Enter a value: yes
Apply complete ! Resources: 2 added, 0 changed, 0 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
       default        = “10.0.66.0/24”
 }

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix
       tags = {
              Name = “prod-subnet” 
       }
}

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

VIsual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.

Enter a value: yes
Apply complete ! Resources: 1 added, 0 changed, 1 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>

AWS UI
VIRTUAL PRIVATE CLOUD
Subnets
Refresh
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.66.0/24

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup
terraform.tfvars

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
 }

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix
       tags = {
              Name = “prod-subnet” 
       }
}

#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup
terraform.tfvars

terraform.tfvars
subnet_prefix = [“10.0.0.4/24”] 

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
 }

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix
       tags = {
              Name = “prod-subnet” 
       }
}

resource “aws_subnet” “subnet-2” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix
       tags = {
              Name = “dev-subnet” 
       }
}


#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup
terraform.tfvars

terraform.tfvars
subnet_prefix = [“10.0.1.0/24”, “10.0.2.0/24” ] 

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
 }

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix[0]
       tags = {
              Name = “prod-subnet” 
       }
}

resource “aws_subnet” “subnet-2” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix[1]
       tags = {
              Name = “dev-subnet” 
       }
}


#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

VIsual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.
Enter a value: yes
Apply complete ! Resources: 2 added, 0 changed, 1 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>


AWS UI
VIRTUAL PRIVATE CLOUD
Subnets
Refresh
Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.1.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.1.0/24
- - -

Name            VPC ID                                  State          IPv4 CIDR    Available IPv4 
     
prod-subnet  subnet-0494d3bdc8cb54b06   Available    10.0.2.0/24   251                              dopt-29ce4953

IPv6 CIDR  


Description 
                                                                             IPv4 CIDR 10.0.2.0/24

Visual Studio Code
Explorer
Editor
OPEN EDITORS
main.tf
PROJECT-1
.terraform/plugins/windows_amd64
lock.json
terraform-provider-aws_v2.65.0_x4.exe
main.tf
terraform.tfstate
terraform.tfstate.backup
terraform.tfvars

terraform.tfvars
subnet_prefix = [{cidr_block = 10.0.1.0/24, name = “prod-subnet”}, {cidr_block = 10.0.2.0/24, name = “dev_subnet”}] 

Visual Studio Code 
main.tf
provider “aws” {
       region           = us-east-1
       access_key  = “AKIAJTTSSUF2PB6HDCCA
       secrete_key  = “ucQFWfA/ Xw/ xLUZKQqXFin0pxSB54N21B8epPjLD”  
}

variables “subnet_prefix” {
       description = “cidr block for the subnet”
 }

resource “aws_vpc” “first-vpc” {
       cidr_block = “10.0.0.0/16”
              tags = {
                     Name = “production”
       }
}

resource “aws_subnet” “subnet-1” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix[0].cidr_block
       tags = {
              Name = var.subnet-prefix[0].name
       }
}

resource “aws_subnet” “subnet-2” {
       vpc_id       = aws_vpc.first-vpc.id
       cidr_block = var.subnet_prefix[1].cidr_block
       tags = {
              Name =  var.subnet-prefix[1].name
       }
}


#resource “<provider>_<resource_type>” “name” {
#       config options …
#       key = “value”
#       key2 = “another value”
# }

VIsual Studio Code
Terminal
C:\Users\sanjeev\Documents\terraform-project\Project-1>terraform apply
Do you want to perform these actions ?
Terraform will perform the actions described above.
Only ‘yes’ will be accepted to approuve.
Enter a value: yes
Apply complete ! Resources: 0 added, 2 changed, 0 destroyed.
C:\Users\sanjeev\Documents\terraform-project\Project-1>
