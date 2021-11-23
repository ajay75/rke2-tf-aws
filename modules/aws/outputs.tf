#############
# USER DATA #
#############

data "template_file" "server_userdata" {
  template = file("${path.module}/templates/server_userdata.sh")

  vars = {
    cp_lb_host = aws_elb.k8s_cp_elb.dns_name
  }
}

resource "local_file" "ssh_config" {
  content = templatefile("${path.module}/templates/ssh_config.tpl",
    {
      user = var.amis[var.region][var.os].user
    }
  )
  filename = "ssh_config"
}
