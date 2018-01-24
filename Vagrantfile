Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    config.vm.define "R1" do |node|
      node.vm.box = "iosxe/16.07.01"
      node.vm.network "private_network",
        ip: "172.20.20.10",
        auto_config: false,
        nic_type: "virtio"
      node.vm.network "private_network",
        virtualbox__intnet: "link1",
        auto_config: false, 
        nic_type: "virtio"

      # attach a configuration disk
      node.vm.provider "virtualbox" do |v|
        v.customize ["storageattach", :id,
          "--storagectl", "IDE_Controller",
          "--port", 1,
          "--device", 0,
          "--type", "dvddrive",
          "--medium", "R1.iso"
        ]

      end
    end
end
