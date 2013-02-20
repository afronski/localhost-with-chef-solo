gems = %w{bundler rails foodcritic rake sass compass vagrant chef knife-ec2}

gems.each do |gem|
    gem_package gem
end