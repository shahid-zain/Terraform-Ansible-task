resource "null_resource" "copy_execute" {
  
    connection {
    type = "ssh"
    host = aws_instance.example1.public_ip
    user = "ubuntu"
    private_key = file("mykey")
    }

 
  provisioner "file" {
    source      = "apache.sh"
    destination = "apache.sh"
  }
  
   provisioner "remote-exec" {
    inline = [
      "sudo chmod 777 apache.sh",
      "sh apache.sh",
    ]
  }
  
  depends_on = [ aws_instance.example1 ]
  
  }
