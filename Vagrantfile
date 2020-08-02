Vagrant.configure("2") do |config|
  config.vm.define "ubuntu18" do |ubuntu18|
    ubuntu18.vm.box = "aspyatkin/ubuntu-18.04-server"
    ubuntu18.vm.network "public_network", type: "dhcp"    
    ubuntu18.vm.network "forwarded_port", guest: 22, host: 2222
    ubuntu18.vm.provision "file", source: "configuration", destination: "/home/vagrant/configuration"
    ubuntu18.vm.provision "shell", path: "install.sh"

    config.vm.provider "virtualbox" do |v|
      v.memory = 3024
      v.cpus = 2
   end
  end
end