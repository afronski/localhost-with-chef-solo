# Create main directory for all repositories.
repositories = "/home/afronski/Repositories"

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
    {
        :uri => "git@github.com:afronski/tv-series.git",
        :directory => "tv-series"
    }
]

repos.each do |repo|
    destination = repositories + "/" + repo[:directory]

    directory destination do
        owner destination_user
        group destination_group
        mode destination_mode
        action :create
    end

    git destination do
        repository repo[:uri]
        user destination_user
        group destination_group
        action :checkout
    end
end