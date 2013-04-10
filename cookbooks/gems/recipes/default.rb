gems = %w{jekyll rdiscount
          cucumber headless
          bundler rails rake
          sass compass
          vagrant chef foodcritic knife-ec2
          yajl-ruby erubis}

gems.each do |gem|
    gem_package gem
end