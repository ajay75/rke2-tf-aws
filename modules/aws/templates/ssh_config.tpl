Host bastion 
  Hostname 52.61.58.249
  User ${user}
  IdentityFile ~/.ssh/rke2-cluster

Host master
  Hostname 10.0.12.90
  User ${user}
  IdentityFile ~/.ssh/rke2-cluster
  ProxyJump bastion

