# Important packages to install.
vcss = %w{subversion git mercurial}

languages = %w{nodejs}
servers = %w{}

opengl = %w{glfw glew mesa-demos glu freeglut}

nosql = %w{}
java = %w{}

tools = %w{mc gimp imagemagick}
net_tools = %w{gnu-netcat nmap}

editors = %w{vim sublime-text}
ide = %w{}

browsers = %w{firefox chromium opera}

fonts = %w{}
office = %w{}

packages = [
    vcss,

    languages,
    servers,

    opengl,

    nosql,
    java,

    tools,
    net_tools,

    editors,
    ide,

    browsers,

    fonts,
    office
]

packages.flatten.each do |a_package|
    package a_package
end