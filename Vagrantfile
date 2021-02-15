Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    vb.name = "nginxVagrant"
    vb.memory = "1024"
    vb.customize ["modifyvm", :id, "--cpus", 2]

  end

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "public_network", type: "dhcp"
  config.vm.provision :shell, path: "./provision/bootstrap.sh"

end