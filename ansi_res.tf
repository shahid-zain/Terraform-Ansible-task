resource "null_resource" "copy_execute1" {
  
    connection {
    type = "ssh"
    host = aws_instance.example1.public_ip
    user = "ubuntu"
    private_key = file("mykey")
    }

 
  provisioner "file" {
    source      = "ansible.sh"
    destination = "/tmp/ansible.sh"
  }
  
   provisioner "remote-exec" {
    inline = [
      "sudo chmod 777 /tmp/ansible.sh",
      "sh /tmp/ansible.sh",
    ]
  }
  
  depends_on = [ aws_instance.example1 ]
  
  }
