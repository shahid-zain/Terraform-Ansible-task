resource "null_resource" "copy_execute2" {
  
    connection {
    type = "ssh"
    host = aws_instance.example1.public_ip
    user = "ubuntu"
    private_key = file("mykey")
    }

 
  provisioner "file" {
    source      = "moodle.sh"
    destination = "/tmp/moodle.sh"
  }
  
   provisioner "file" {
    source      = "moodle.conf"
    destination = "/tmp/moodle.conf"
  }

   provisioner "file" {
    source      = "moodle.yaml"
    destination = "/tmp/moodle.yaml"
  }

   provisioner "remote-exec" {
    inline = [
      "sudo chmod 777 /tmp/moodle.sh",
      "sh /tmp/moodle.sh",
    ]
  }


  
  depends_on = [ aws_instance.example1 ]
  
  }
