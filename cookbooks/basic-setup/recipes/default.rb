# Important packages to install.
vcss = %w{subversion git mercurial}

languages = %w{}
servers = %w{}

opengl = %w{glfw glew mesa-demos glu freeglut}

nosql = %w{}
java = %w{}

tools = %w{sublime-text gimp imagemagick}
editors = %w{vim}

browsers = %w{firefox chromium opera}

fonts = %w{}
office = %w{}

packages = [
    vcss,

    opengl,

    tools,
    editors,

    browsers
]

packages.flatten.each do |a_package|
    package a_package
end

# All recipes to include.
aur_manager = %w{pacaur}

recipes = [
]

recipes.flatten.each do |a_recipe|
    include_recipe a_recipe
end

# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next}

aur_packages = [
]

# @TODO: Ścieżka dla root w Chef::Config.
# @TODO: Przejrzyj listę pakietów i listę do usunięcia!

aur_packages.flatten.each do |a_aur_package|
    package a_aur_package
end