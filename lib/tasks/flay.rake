def flay(output, *directories)
  `find #{directories.join(" ")} -name \\*.rb|xargs flay > #{RAILS_ROOT}/tmp/flay/#{output}.txt`
end

desc "Flay models, controller, helpers and lib"
task :flay do
  flay "all", *%w[app/models app/controllers app/helpers lib]
end

namespace :flay do
  desc "Flay code in app/models"
  task :flay do
    flay "models", "app/models"
  end
  
  desc "Flay code in app/controllers"  
  task :controllers do
    flay "controllers", "app/controllers"
  end
  
  desc "Flay code in app/helpers"  
  task :helpers do
    flay "helpers", "app/helpers"
  end
  
  desc "Flay code in lib"  
  task :lib do
    flay "lib", "lib"
  end
end