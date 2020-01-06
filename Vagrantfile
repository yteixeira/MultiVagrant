required_plugins = %w( vagrant-hostsupdater )
required_plugins.each do |plugin|
  system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin

end

Vagrant.configure("2") do |config|
  config.vm.define "app" do |app|

    app.vm.box = "ubuntu/xenial64"
    app.vm.network "private_network", ip: "192.168.10.100" #defines the ip address of the connection
    app.hostsupdater.aliases = ["app.local"]
    app.vm.synced_folder "environment/app", "/home/vagrant/app" #makes a copy of the app folder inside the virtual machine
    app.vm.provision "shell", path: "environment/app/provision.sh"

  end

  config.vm.define "db" do |db|

    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150" #defines the ip address of the connection
    db.hostsupdater.aliases = ["database.local"]
    db.vm.synced_folder "environment/db", "/home/ubuntu/environment" #makes a copy of the app folder inside the virtual machine
    db.vm.provision "shell", path: "environment/db/provision.sh" #runs the provision.sh file on start up

  end
end
