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