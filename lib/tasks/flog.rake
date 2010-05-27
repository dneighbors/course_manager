def flog(output, *directories)
  `find #{directories.join(" ")} -name \\*.rb|xargs flog > #{RAILS_ROOT}/tmp/flog/#{output}.txt`
end

desc "Flog models, controller, helpers and lib"
task :flog do
  flog "all", *%w[app/models app/controllers app/helpers lib]
end

namespace :flog do
  desc "Flog code in app/models"
  task :models do
    flog "models", "app/models"
  end
  
  desc "Flog code in app/controllers"  
  task :controllers do
    flog "controllers", "app/controllers"
  end
  
  desc "Flog code in app/helpers"  
  task :helpers do
    flog "helpers", "app/helpers"
  end
  
  desc "Flog code in lib"  
  task :lib do
    flog "lib", "lib"
  end
end