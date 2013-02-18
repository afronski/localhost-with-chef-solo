# Important packages to install.
vcss = %w{subversion git mercurial}
packages = [ vcss ]

packages.flatten.each do |a_package|
    package a_package
end

# All recipes to include.
utils = %w{}
recipes = [ ]

recipes.flatten.each do |a_recipe|
    include_recipe a_recipe
end