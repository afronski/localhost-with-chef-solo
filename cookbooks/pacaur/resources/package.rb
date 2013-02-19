actions :install, :uninstall

attribute :name, :name_attribute => true

def initalize(*args)
    super
    @action = :install
end