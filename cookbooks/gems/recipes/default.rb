gems = %w{bundler rails foodcritic rake sass compass vagrant chef knife-ec2 yajl-ruby erubis}

gems.each do |gem|
    gem_package gem
end