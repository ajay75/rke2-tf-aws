tfuser = "andyg"

######################
# Required Variables #
######################

region = "us-gov-east-1"
public_ssh_key = "Enter public key"
os             = "centos7"
is_public      = true

################################################################################################
# You'll need to define this for regions outside of govcloud (default set inside variables.tf) #
################################################################################################

# amis = {
#   "us-east-1" = {
#     "ubuntu20" = {
#       ami  = "ami-0ac80df6eff0e70b5"
#       user = "ubuntu"
#     }
#   }
# }

# Workers (Default: 3)
k3s_agent_count = 1

# Servers (Default: 3)
k3s_server_count = 1

