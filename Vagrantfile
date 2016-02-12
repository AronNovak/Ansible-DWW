Vagrant.configure(2) do |config|

  config.vm.provider :linode do |provider, override|

    override.vm.box = 'linode'
    override.ssh.private_key_path = '~/.ssh/id_rsa'
    override.vm.box_url = "https://github.com/displague/vagrant-linode/raw/master/box/linode.box"
    provider.token = ENV['LINODE_APIKEY']

    provider.label = (0...8).map { (65 + rand(26)).chr }.join
    provider.distribution = 'Ubuntu 14.04 LTS'
    provider.datacenter = 'frankfurt'
    provider.plan = '1024'
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "drupalhu-proxy.yml"
  end

  ["york", "andor", "csakiistvan", "resi"].each do |drupalguy|
    config.vm.define drupalguy do |drupalguy|
    end
  end

end

