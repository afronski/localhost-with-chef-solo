# Create main directory for all repositories.
repositories = "/home/afronski/Repositories"
github_root = "git@github.com:afronski/%s.git"

destination_mode = 00755
destination_group = "users"
destination_user = "afronski"

directory repositories do
    owner destination_user
    group destination_group
    mode destination_mode
    action :create
end

repos = [
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
    "dotfiles-repository",
    "my-mvc-framework",
    "linguist",
    "x86-ray-tracer",
    "transfusion",
    "bango",
    "tv-series"
]

execute "go to the repositories directory" do
    command "pushd #{destination}"
end

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
        command "su afronski -c 'git clone #{url}'"
    end
end

execute "return from the repositories directory" do
    command "popd"
end