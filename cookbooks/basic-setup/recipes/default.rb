# Important packages to install.
vcss = %w{subversion git mercurial}

languages = %w{}
servers = %w{}

opengl = %w{glfw glew mesa-demos glu freeglut}

nosql = %w{}
java = %w{}

tools = %w{sublime-text}
editors = %w{vim}

browsers = %w{firefox chromium opera}

fonts = %w{}
office = %w{}

packages = [
    vcss,

    opengl
]

packages.flatten.each do |a_package|
    package a_package
end

# AUR packages to install.
aur_browsers = %w{google-chrome-dev firefox-nightly opera-next}

aur_packages = [
    aur_browsers
]

aur_packages.flatten.each do |a_aur_package|
    pacman_aur a_aur_package
end

# All recipes to include.
utils = %w{}

recipes = [

]

recipes.flatten.each do |a_recipe|
    include_recipe a_recipe
end