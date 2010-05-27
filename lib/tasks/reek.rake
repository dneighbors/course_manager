def reek(output, *directories)
  `find #{directories.join(" ")} -name \\*.rb|xargs reek > #{RAILS_ROOT}/tmp/reek/#{output}.txt`
end

desc "reek models, controller, helpers and lib"
task :reek do
  reek "all", *%w[app/models app/controllers app/helpers lib]
end

namespace :reek do
  desc "reek code in app/models"
  task :models do
    reek "models", "app/models"
  end
  
  desc "reek code in app/controllers"  
  task :controllers do
    reek "controllers", "app/controllers"
  end
  
  desc "reek code in app/helpers"  
  task :helpers do
    reek "helpers", "app/helpers"
  end
  
  desc "reek code in lib"  
  task :lib do
    reek "lib", "lib"
  end
end