provider "aws" {
  region     = "eu-east-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "prod-app" {
  ami           = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
  key_name      = "prod.pem"

  tags = {
    Name = "ANSIBLE"
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = "${file("prod.pem")}"
    host        = "${self.public_ip}"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"",
      "sudo brew install ansible",
      "ansible-playbook "/Desktop/Devops-Tasks/Task1/ansible-playbook.yml"
    ]
  }
}