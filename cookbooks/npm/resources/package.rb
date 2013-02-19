actions :install, :uninstall, :install_local, :uninstall_local

attribute :name, :name_attribute => true
attribute :version, :default => nil
attribute :path, :default => nil

def initalize(*args)
    super
    @action = :install
end