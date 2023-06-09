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
