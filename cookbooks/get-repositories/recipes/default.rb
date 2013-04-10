# Create main directory for all repositories.
repositories = "/home/afronski/Repositories"
github_root = "git@github.com:afronski/%s.git"

destination_mode = 00755
destination_group = "users"
destination_user = "afronski"

execute "Directory #{repositories} will be deleted in 20 seconds - STOP IT NOW IF IT SHOULDN'T DO IT !" do
    command "sleep 20;"
end

directory repositories do
    recursive true
    action :delete
end

directory repositories do
    owner destination_user
    group destination_group
    mode destination_mode
    action :create
end

repos = [
    "afronski.github.com",
    "e-learning",
    "provisioning",
    "grammar-generator",
    "playground-repository",
    "grunt-contrib-copy",
    "spectrum",
    "grunt-plato",
    "grunt-bower-task",
    "templates-boilerplates-snippets",
    "presentations",
    "ssied-projekt",
    "dotfiles",
    "my-mvc-framework",
    "linguist",
    "x86-ray-tracer",
    "transfusion",
    "bango",
    "tv-series"
]

repos.each do |repo|
    destination = File.join(repositories, repo)
    url = github_root % [ repo ]

    directory destination do
        owner destination_user
        group destination_group
        mode destination_mode
        action :create
    end

    execute "#{destination} -> git clone #{url}" do
        command "su afronski -c 'git clone #{url} #{destination}'"
    end
end