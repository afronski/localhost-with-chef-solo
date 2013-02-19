include_recipe "npm"

# Install global packages for node.
global_packages = %w{grunt-cli express bower}

global_packages.each do |node_package|
    npm_package node_package
end