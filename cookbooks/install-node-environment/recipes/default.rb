include_recipe "npm"

# Install global packages for node.
global_packages = %w{bower express forever
                     grunt-cli grunt-init
                     jscoverage jsgrep-toolkit jshint
                     mocha plato
                     requirejs weinre
                     yeoman}

global_packages.each do |node_package|
    npm_package node_package
end